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