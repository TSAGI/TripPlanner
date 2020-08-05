document.addEventListener('DOMContentLoaded', () => {
    var countries = document.querySelector('#user_country');
    var territories = document.querySelector('#user_province');
    var cities = document.querySelector('#user_city');

    var option1 = document.createElement('option');
    option1.value = "CA";
    option1.innerText = "Canada";
    countries.insertBefore(option1, countries.childNodes[1]);
    var option2 = document.createElement('option');
    option2.value = "US";
    option2.innerText = "United States";
    countries.insertBefore(option2, countries.childNodes[2]);

    var country;

    if(countries){
        countries.onchange = () => {
            territories.options.length = 1;
            country = countries.options[countries.selectedIndex].value;
            fetch(`/users/get_territories/${country}`)
            .then(e=>e.json())
            .then(x => {
                console.log(x);
                Object.keys(x).forEach (t => {
                    var option = new Option(x[t], t);
                    territories.options.add(option); 
                });
            })
            
        }
    }
        
    if(territories){
        territories.onchange = () => { 
        cities.options.length = 1;
        territory = territories.options[territories.selectedIndex].value;
        fetch(`/users/get_cities/${country}/${territory}`)
        .then(e=>e.json())
        .then(x => {
            Object.keys(x).forEach (c => {
                var option = new Option(x[c], c);
                cities.options.add(option);
            })
        })
        territories.options[territories.selectedIndex].value = territories.options[territories.selectedIndex].text; 
        }
    }

    document.querySelector('form').onsubmit = () => {
        countries.options[countries.selectedIndex].value = countries.options[countries.selectedIndex].text;
        territories.options[territories.selectedIndex].value = territories.options[territories.selectedIndex].text; 
        cities.options[cities.selectedIndex].value = cities.options[cities.selectedIndex].text;
    }
});
          
    
   