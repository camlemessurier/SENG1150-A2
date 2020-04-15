function check(){
  if(!checkFirstName())
  {
    alert("Please provide first name.");
    return false;
  }
  if(!checkLastName())
  {
    alert("Please provide last name.");
    return false;
  }
  if(!checkOperatingArea())
  {
    alert("Please select at least one operating area.");
    return false;
  }
  if(!checkEmail())
  {
    alert("Please provide an email.");
    return false;
  }
  if(!checkCategory()){
    alert("Please select a category");
    return false;
  }


    return true;

}

function checkFirstName () {
  if(document.getElementById("firstName").value == ""){
    return false;
  }
  else {
    return true;
  }
}

function checkLastName () {
  if(document.getElementById("lastName").value == ""){
    return false;
  }
  else {
    return true;
  }
}

function checkEmail () {
  if(document.getElementById("email").value == ""){
    return false;
  }
  else {
    return true;
  }
}

function checkOperatingArea () {
  if(!document.getElementById("Mereweather").checked && !document.getElementById("Newcastle").checked && !document.getElementById("Mayfield").checked){
    return false;
  }
  else {
    return true;
  }
}

function checkCategory(){
  if(document.getElementById("select")==document.getElementById("category").selectedIndex)
  {
    return false;
  }
  else {
    return true;
  }
}
