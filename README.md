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
| Feature | Support |
| :----------- | :-----------: |
| Get pastes | Yes |
| Get private pastes | Yes | 
| Create pastes | Yes |
| Create Private pastes | No | 
| Edit pastes | No | 
| Delete pastes | No | 
| Get Users | Yes |
| Check if a user exists | No | 
| Get a language by name | No | 
| Get a language by extension | No |

#### 🚧 The package is on development. 🚧
