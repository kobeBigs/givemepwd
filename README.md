# givemepwd - a random password generator

A simple Perl program that generates a random password of a specified length using alphanumeric characters (`0-9`, `a-z`, `A-Z`). If no length is specified, it defaults to 16 characters.

## Requirements

- Perl 5 or higher.

No additional Perl modules are required.

## Usage

Run the script from the command line:

```bash
perl givemepwd.pl [password length]
```

### Examples

- To generate a password of 16 characters (default):

    ```bash
    perl givemepwd.pl
    ```

- To generate a password of 36 characters:

    ```bash
    perl givemepwd.pl 36
    ```

## Help

To display help information, use the `--help` or `-h` flag:

```bash
perl givemepwd.pl --help
```

## Notes

- If the password length is not provided or is invalid (non-positive integer), the script defaults to a length of 16.

- The password will include a mix of uppercase letters, lowercase letters, and numbers.

- The script prints the generated password to the console in the format:

    ```css
    Here you go >> [generated_password]
    ```

### Example Output

For a password length of 12, you might see:

```css
Here you go >> a8dZ5nX2bQp7
```

## License

givemepwd is released under the MIT Licence. See the bundled LICENSE file for details.
