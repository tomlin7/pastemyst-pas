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

### Feature support
| Feature | Support | Feature | Support |
| :-----------: | :-----------: | :----------: | :----------: |
| Get pastes | Yes | Delete pastes | No | 
| Get private pastes | Yes | Get Users | Yes |
| Create pastes | Yes | Check if a user exists | No | 
| Create Private pastes | No | Get a language by name | No | 
| Edit pastes | No | Get a language by extension | No |

#### 🚧 The package is on development. 🚧
