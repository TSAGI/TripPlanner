var countryList = [];

document.addEventListener('DOMContentLoaded', () => {
    fetch('https://restcountries.eu/rest/v2/all')
    .then(e => e.json())
    .then(countries => {
        listCountries(countries);
        countryList = countries;
    });
});

listCountries = (countries) => {
    console.log(countries);
    let select_country = document.querySelector('#users_country');
    let firstOption = document.createElement('option');
    firstOption.text = "Choose your country:";
    select_country.appendChild(firstOption);
        countries.forEach((country) => {
            let newOption = document.createElement('option');
            newOption.text = country.name;
            newOption.value = country.name;
            select_country.appendChild(newOption);
        })
    select_country.onchange = () => {
        country_choice();
    } 
      
}

country_choice = () => {
        var select_country = document.querySelector('#users_country');  
        console.log(select_country.options[select_country.selectedIndex].text);     
}
// listCountries(countryList);