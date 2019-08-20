#!/bin/bash

fullOutput=""

######
######
######
textInput="
    <div class=\"form-group\">
        <label for=\"exampleInput1\">Input</label>
        <input type=\"text\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"inputHelp\" placeholder=\"Enter...\">
    </div>
"

#######
#######
#######
emailInput="
    <div class=\"form-group\">
        <label for=\"exampleInputEmail1\">Email address</label>
        <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" placeholder=\"Enter email\">
        <small id=\"emailHelp\" class=\"form-text text-muted\">We'll never share your email with anyone else.</small>
    </div>
"
#######
#######
#######
passwordInput="
    <div class=\"form-group\">
        <label for=\"exampleInputPassword1\">Password</label>
        <input type=\"password\" class=\"form-control\" id=\"exampleInputPassword1\" placeholder=\"Password\">
    </div>
"
#######
#######
#######
checkboxInput="
    <div class=\"form-check\">
      <input type=\"checkbox\" class=\"form-check-input\" id=\"exampleCheck1\">
       <label class=\"form-check-label\" for=\"exampleCheck1\">Check me out</label>
    </div>
"
#######
#######
#######
buttonInput="
    <button type=\"submit\" class=\"btn btn-primary\">Submit</button>
"
######
######
######
selectInput="
  <div class=\"form-group\">
      <label for=\"exampleFormControlSelect1\">Example select</label>
      <select class=\"form-control\" id=\"exampleFormControlSelect1\">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
      </select>
  </div>
"
######
######
######
multiSeclectInput="
  <div class=\"form-group\">
      <label for=\"exampleFormControlSelect2\">Example multiple select</label>
      <select multiple class=\"form-control\" id=\"exampleFormControlSelect2\">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
      </select>
  </div>
"
######
######
######
textAreaInput="
  <div class=\"form-group\">
      <label for=\"exampleFormControlTextarea1\">Example textarea</label>
      <textarea class=\"form-control\" id=\"exampleFormControlTextarea1\" rows=\"3\"></textarea>
  </div>
"
######
######
######
fileInput="
  <div class=\"form-group\">
      <label for=\"exampleFormControlFile1\">Example file input</label>
      <input type=\"file\" class=\"form-control-file\" id=\"exampleFormControlFile1\">
  </div>
"
######
######
######
dropDownMenuButtons="
  <div class=\"dropdown\">
    <button class=\"btn btn-secondary dropdown-toggle\" type=\"button\" id=\"dropdownMenuButton\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
      Dropdown button
    </button>
    <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuButton\">
      <a class=\"dropdown-item\" href=\"#\">Action</a>
      <a class=\"dropdown-item\" href=\"#\">Another action</a>
      <a class=\"dropdown-item\" href=\"#\">Something else here</a>
    </div>
  </div>
"

#####
#####
#####
dropDownMenuButtonsSplit="
  <div class=\"btn-group\">
    <button type=\"button\" class=\"btn btn-danger\">Action</button>
    <button type=\"button\" class=\"btn btn-danger dropdown-toggle dropdown-toggle-split\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
      <span class=\"sr-only\">Toggle Dropdown</span>
    </button>
    <div class=\"dropdown-menu\">
      <a class=\"dropdown-item\" href=\"#\">Action</a>
      <a class=\"dropdown-item\" href=\"#\">Another action</a>
      <a class=\"dropdown-item\" href=\"#\">Something else here</a>
      <div class=\"dropdown-divider\"></div>
      <a class=\"dropdown-item\" href=\"#\">Separated link</a>
    </div>
  </div>
"
#####
#####
#####
dropDownMenuLinks="
  <div class=\"dropdown show\">
    <a class=\"btn btn-secondary dropdown-toggle\" href=\"#\" role=\"button\" id=\"dropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
      Dropdown link
    </a>

    <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuLink\">
      <a class=\"dropdown-item\" href=\"#\">Action</a>
      <a class=\"dropdown-item\" href=\"#\">Another action</a>
      <a class=\"dropdown-item\" href=\"#\">Something else here</a>
    </div>
  </div>
"
#####
#####
#####
dropUpMenuButtons="
  <div class=\"btn-group dropup\">
    <button type=\"button\" class=\"btn btn-secondary dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
      Dropup
    </button>
    <div class=\"dropdown-menu\">
      <!-- Dropdown menu links -->
    </div>
  </div>
"
#####
#####
#####
dropUpMenuButtonsSplit="
  <div class=\"btn-group dropup\">
    <button type=\"button\" class=\"btn btn-secondary\">
      Split dropup
    </button>
    <button type=\"button\" class=\"btn btn-secondary dropdown-toggle dropdown-toggle-split\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
      <span class=\"sr-only\">Toggle Dropdown</span>
    </button>
    <div class=\"dropdown-menu\">
      <!-- Dropdown menu links -->
    </div>
  </div>
"
######
######
######
dropRightMenuButtons="
  <div class=\"btn-group dropright\">
    <button type=\"button\" class=\"btn btn-secondary dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
      Dropright
    </button>
    <div class=\"dropdown-menu\">
      <!-- Dropdown menu links -->
    </div>
  </div>
"
######
######
######
dropRightMenuButtonsSplit="
  <div class=\"btn-group dropright\">
    <button type=\"button\" class=\"btn btn-secondary\">
      Split dropright
    </button>
    <button type=\"button\" class=\"btn btn-secondary dropdown-toggle dropdown-toggle-split\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
      <span class=\"sr-only\">Toggle Dropright</span>
    </button>
    <div class=\"dropdown-menu\">
      <!-- Dropdown menu links -->
    </div>
  </div>
"
######
######
######
dropLeftMenuButtons="
  <div class=\"btn-group dropleft\">
    <button type=\"button\" class=\"btn btn-secondary dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
      Dropleft
    </button>
    <div class=\"dropdown-menu\">
      <!-- Dropdown menu links -->
    </div>
  </div>
"
######
######
######
dropLeftMenuButtonsSplit="
  <div class=\"btn-group\">
    <div class=\"btn-group dropleft\" role=\"group\">
      <button type=\"button\" class=\"btn btn-secondary dropdown-toggle dropdown-toggle-split\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
        <span class="sr-only">Toggle Dropleft</span>
      </button>
      <div class=\"dropdown-menu\">
        <!-- Dropdown menu links -->
      </div>
    </div>
    <button type=\"button\" class=\"btn btn-secondary\">
      Split dropleft
    </button>
  </div>
"
######
######
######
navBar="
<nav class=\"navbar navbar-expand-lg navbar-light bg-light\">
  <a class=\"navbar-brand\" href=\"#\">Navbar</a>
  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">
    <span class=\"navbar-toggler-icon\"></span>
  </button>

  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">
    <ul class=\"navbar-nav mr-auto\">
      <li class=\"nav-item active\">
        <a class=\"nav-link\" href=\"#\">Home <span class=\"sr-only\">(current)</span></a>
      </li>
      <li class=\"nav-item\">
        <a class=\"nav-link\" href=\"#\">Link</a>
      </li>
      <li class=\"nav-item dropdown\">
        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
          Dropdown
        </a>
        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">
          <a class=\"dropdown-item\" href=\"#\">Action</a>
          <a class=\"dropdown-item\" href=\"#\">Another action</a>
          <div class=\"dropdown-divider\"></div>
          <a class=\"dropdown-item\" href=\"#\">Something else here</a>
        </div>
      </li>
      <li class=\"nav-item\">
        <a class=\"nav-link disabled\" href=\"#\">Disabled</a>
      </li>
    </ul>
    <form class=\"form-inline my-2 my-lg-0\">
      <input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">
      <button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\">Search</button>
    </form>
  </div>
</nav>
"



echo "Bootstrap component clipboard"
echo "---------------------------------------------------------------------"
echo "Input Types: "
echo "
emailInput        passwordInput  checkboxInput buttonInput selectInput
multiSelectInput  textAreaInput  fileInput     textInput
"
echo "---------------------------------------------------------------------"
echo "Dropdown Menus: "
echo "
dropDownMenuButtons   dropDownMenuButtonsSplit   dropDownMenuLinks
dropUpMenuButtons     dropUpMenuButtonsSplit     dropUpMenuButtonsSplit
dropRightMenuButtons  dropRightMenuButtonsSplit 
dropLeftMenuButtons   dropLeftMenuButtonsSplit
"
echo "---------------------------------------------------------------------"
echo "Nav Bars: "
echo "navBar"

echo "Select Bootstrap component"
read inputOption

echo "How many?"
read userAmount

echo "Do you need enclosing form tags? (y/N)"
read isForm
if [ "$isForm" == "y" ]
 then
  formOpenTag="<form>"
  formClosingTag="</form>"
else
  formOpenTag=""
  formClosingTag=""
fi

i=0
# userAmount=2
# inputOption=$checkboxInput

while [ $i -lt $userAmount ]
do
    fullOutput+="${!inputOption}"
    i=$[$i+1]
done


cat <<- EOF > /dev/clipboard
$formOpenTag
    $fullOutput
$formClosingTag
EOF

echo "Copied to the clipboard!"