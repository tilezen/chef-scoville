Scoville Cookbook
=================

Sets up and configures [Scoville](https://github.com/tilezen/scoville) a tile latency testing and dissection tool.

Requirements
------------

#### cookbooks
- `apt` - For installing OS packages.
- `git` - To check out Scoville source code from Github.
- `runit` - To run Scoville as a service.
- `user` - To create a Scoville user.

#### operating systems
- `ubuntu` - Only tested on Ubuntu so far.

#### packages
- `python` - Scoville is written in Python, so it needs the interpreter.
- `python-pip` - Scoville has several Python package dependencies which need to be installed.

Attributes
----------

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:scoville][:cfg_path]</tt></td>
    <td>String</td>
    <td>Path to put configuration files in.</td>
    <td><tt>'/etc/scoville'</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:cfg_file]</tt></td>
    <td>String</td>
    <td>What to call the main YAML configuration file.</td>
    <td><tt>'config.yaml'</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:database]</tt></td>
    <td>String</td>
    <td>Database connection string to Redshift.</td>
    <td><tt>'host=scoville-db.example.com dbname=scoville'</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:logging_file]</tt></td>
    <td>String</td>
    <td>What to call the Python logging config file.</td>
    <td><tt>'logging.conf'</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:mapzen][:api_key]</tt></td>
    <td>String</td>
    <td>Mapzen vector tiles API key.</td>
    <td><tt>'YOUR_API_KEY_HERE'</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:mapzen][:host]</tt></td>
    <td>String</td>
    <td>Host to get vector tiles from.</td>
    <td><tt>'vector.dev.mapzen.com'</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:region]</tt></td>
    <td>String</td>
    <td>Region string to report as.</td>
    <td><tt>'us-east-1'</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:run_interval]</tt></td>
    <td>Integer</td>
    <td>Interval in seconds between tile fetches.</td>
    <td><tt>60</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:runit][:timeout]</tt></td>
    <td>Integer</td>
    <td>Number of seconds to wait for service startup.</td>
    <td><tt>10</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:tiles]</tt></td>
    <td>String</td>
    <td>URL or filesystem location of list of tiles.</td>
    <td><tt>'/path/to/tiles.txt'</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:user][:user]</tt></td>
    <td>String</td>
    <td>What to call the Scoville user.</td>
    <td><tt>'scoville'</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:user][:home]</tt></td>
    <td>String</td>
    <td>What directory to use as Scoville's home.</td>
    <td><tt>'/home/scoville'</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:user][:create_group]</tt></td>
    <td>Boolean</td>
    <td>True if a group should be created for the Scoville user.</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:user][:enabled]</tt></td>
    <td>Boolean</td>
    <td>True if the user should be created.</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>[:scoville][:revision][:scoville]</tt></td>
    <td>String</td>
    <td>The revision, tag or branch to of the Scoville source to use.</td>
    <td><tt>'master'</tt></td>
  </tr>
</table>


License
-------

The Scoville cookbook is available under the [MIT](LICENSE) license.

Contributing
------------

We welcome contributions to Scoville. If you would like to report an issue, or even better fix an existing one, please use the [Scoville cookbook issue tracker](https://github.com/tilezen/chef-scoville/issues) on GitHub.
