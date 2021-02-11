<table>
  <tr>
    <td align="center" width="30%">
      <img src="./.github/icon.gif">
    </td>
    <td align="center" width="25%">

# PasteMyst-Pas

An API wrapper for [PasteMyst](https://paste.myst.rs/) written in **Pascal!**

  </tr>
</table>

# pastemyst-pas
pastemyst api wrapper written in pascal.

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
| Feature | Support | Feature | Support |
| :-----------: | :-----------: | :----------: | :----------: |
| Get pastes | Yes | Delete pastes | Yes | 
| Get private pastes | Yes | Get Users | Yes |
| Create pastes | Yes | Check if a user exists | Yes | 
| Create Private pastes | Yes | Get a language by name | Yes | 
| Edit pastes | Yes | Get a language by extension | Yes |
