<h1 align="center">
  <br>
  <img src="./res/logo_static.png" width="200" alt="PasteMyst.Pas">
</h1>

<div align="center">
   <h1>PasteMyst-Pas</h1>
   <h4>PasteMyst API Wrapper</h4>
   <img src="res/madewithpascal.png" width=220>
   <img src="https://forthebadge.com/images/badges/built-with-love.svg">

</div>

---

<p align="center">
  <a href="#about">About</a> •
  <a href="#installation">Installation</a> • 
  <a href="#features">Features</a> •
  <a href="#wiki">Docs</a> •
  <a href="./.github/CONTRIBUTING.md">Contributing</a> •
  <a href="#credits">Credits</a> •
  <a href="#license">License</a>
</p>

---

## About

<table style="margin-left: auto; margin-right: auto;">
<tr>
<td>

**PasteMyst-Pas** is an API wrapper written in **FreePascal** <img src="./res/fpc.gif" width=40> for [**pastemyst**](https://paste.myst.rs),
a powerful website for storing and sharing text and code snippets. completely free and open source. PasteMyst is created by [CodeMyst](https://github.com/CodeMyst). This library contains pre-defined, easy-to-use functions which uses an HTTPClient to connect to the API.

<p align="right">
<sub>- Billy</sub>
</p>

</td>
</tr>
</table>




## Sample Usage
```pas
Program example;

// importing the unit, this is important
uses pastemyst;

// your paste's id
const paste_id = 'id here';

begin
   writeln('Fetching Paste with Id: ', paste_id);
   Write(get_paste(paste_id), ^M);
end.
```
[documentation](https://billyeatcookies.gitbook.io/pastemyst-pas/)
### Feature support
| Feature               | Support| Feature                     | Support|
| :--------------------:|:------:| :--------------------------:| :-----:|
| Get pastes            | ✔️      | Delete pastes               | ✔️      | 
| Get private pastes    | ✔️      | Get Users                   | ✔️      |
| Create pastes         | ✔️      | Check if a user exists      | ✔️      | 
| Create Private pastes | ✔️      | Get a language by name      | ✔️      | 
| Edit pastes           | ✔️      | Get a language by extension | ✔️      |



The package is on developement process. <br>
[![forthebadge](https://forthebadge.com/images/badges/0-percent-optimized.svg)](https://forthebadge.com)


<!--✔️❌-->

<!-- Design #2
<center>
   <table>
   <tr>
      <td align="center" width="30%">
         <img src="./icon.gif">
      </td>
      <td align="center" width="70%">

   # PasteMyst-Pas

   An API wrapper for [PasteMyst](https://paste.myst.rs/) written in **Pascal!**

   </tr>
   </table>
</center>
-->
