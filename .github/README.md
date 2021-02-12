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


<table style="margin-left: auto; margin-right: auto;">
<tr>
<td>

<p align="center">
  <a href="#about">About</a> •
  <a href="#installation">Installation</a> •
  <a href="#updating">Updating</a> •
  <a href="#features">Features</a> •
  <a href="#binds">Binds</a> •
  <a href="#wiki">Wiki</a> •
  <a href="#contributing">Contributing</a> •
  <a href="#credits">Credits</a> •
  <a href="#support">Support</a> •
  <a href="#license">License</a>
</p>
</td>
</tr>
</table>

---

## About

<table style="margin-left: auto; margin-right: auto;">
<tr>
<td>

**PasteMyst-Pas** is an API wrapper for [**pastemyst**](https://paste.myst.rs) written in **FreePascal** <img src="./fpc.gif" width=40>

<p align="right">
<!-- <sub>(Preview)</sub> -->
</p>

</td>
</tr>
</table>

## Installation

just install it(sample doc)


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


<!--✔️❌-->        