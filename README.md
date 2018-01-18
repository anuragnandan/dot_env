# Dot_Env

This is Chef cookbook created for generating .env files with key,vals provided.

### Platforms

Centos7+

### Attributes

Node attributes for this cookbook require `doc_root` for the path, `config` for the actual key, vals

 - `node['dot_env']['doc_root']` Location mapping to each app.
 - `node['dot_env']['config']` Configuration mapping to each app.

```json
"dot_env": {
    "doc_root": {
        "app1": "/path/to/app1"
      },
    "config": {
        "app1": {
            "key1": "val1",
            "key2": "val2"
          }
      }
  }
```

Above json will create a .env file at `/path/to/app1` with following contents

```bash
key1=val1
key2=val2
```

### Testing

```bash
  kitchen test
```
