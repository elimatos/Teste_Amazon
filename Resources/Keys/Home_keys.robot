*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${BROWSER}                 chrome
${HOME_URL}                https://www.amazon.com.br/
${HOME_TITLE}              Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais.
${HOME_FIELD_PESQUISAR}    name=field-keywords
${HOME_BTN_PESQUISAR}      id=nav-search-submit-button
${HOME_TOPMENU}            xpath=//*[@id="nav-xshop-container"]