<style>
  h3{font-weight:bold; font-size: 20px !important;}
  .anchor{ position: relative;top: -35px;}
  .post ul{
    list-style-type: none;
    padding: 2px;
    font-weight:none;   
  }
  .post li{
    margin-left: 25px;
  }
  .post{
    margin-left: 20px !important;
    float: left;
    width: 17em !important;
    margin-right: 0;
  }
  .doc{
    padding: 0 20px;
    width: 52em;
    float:right;
  }
  @media (max-width: 767px) {
    .doc{
      width: auto;
      padding: 0 10px;
    }
    .post{
      width: 19em !important;
    }
  }
</style>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <h2>Overview</h2>


    <article class="post">
      <div class="inside">
        <ul style="margin-left: -20px">
          <li><a href="?r=docs" class="more-link">Overview</a>
            <ul>
              <li><a href="#dirtree" class="more-link">Directory Tree Info</a></li>
              <li><a href="#linuxinstallation" class="more-link">Installation</a>
                <ul>
                  <li><a href="#linuxinstallation" class="more-link">Linux</ax></li>
                  <li><a href="#wininstallation" class="more-link">Windows</ax></li>
                  <li><a href="#macinstallation" class="more-link">Mac</ax></li>
                </ul>
              </li>
              <li><a href="#dep" class="more-link">Dependencies</a></li>
              <li><a href="#configuration" class="more-link">Configuration</a>
            </ul>
          </li>
          <li><a href="?r=docs/tutorial" class="more-link">Tutorial</a>
            <ul>
                <li><a href="?r=docs/tutorial#first" class="more-link">Your first application</ax></li>
                <li><a href="?r=docs/tutorial#controller" class="more-link">Controller</a></li>
              </ul>
          </li>
          <li><a href="?r=docs/manual" class="more-link">Reference Manual</a></li>
        </ul>

      </div>
      <!-- /.inside -->
    </article>
    <div class="doc">
      <a name="dirtree" class="anchor">&nbsp;</a>
      <h3>Directory tree info</h3>
      <p>
      <code>/conf</code> - configuration files, open and edit them.<br/>
      <code>/controllers</code> - controllers you will make!<br/>
      <code>/layouts</code> - default layout files. </br>
      <code>/models</code> - models you will make!.<br/>
      <code>/pub</code> - public files (js libraries, for example)<br/>
      <code>/runtime</code> - temporary files generated during runtime.<br/>
      <code>/views</code> - this is where your lua pages in .lp will go.
      </p>
      <a name="linuxinstallation" class="anchor">&nbsp;</a>
      <h3>Installation - Linux</h3>
      <p>
        Sailor is compatible with a variety of operational systems and webservers. On this example, we will use Ubuntu and Apache2.4.<br/><br/>
        If you don't have it already, install Lua. Sailor is compatible with both 5.1 and 5.2.<br/>
        <pre>sudo apt-get install lua5.2</pre><br/>
        Install apache2.4. The official Ubuntu repository has apache2.2 as default, but you can't use lua scripts on it. It is recommended that you use the latest version as possible of apache. You can follow the instructions on <a href="http://apache.org" target="_blank">apache.org</a>. If that sounds a bit too complicated, you can get apache2.4.2 adding the following repository:<br/>
        <pre>sudo apt-add-repository ppa:ptn107/apache</br>sudo apt-get update</br>sudo apt-get install apache2</pre>
        <br/>
        Enable mod_lua for Apache.</br>
        <pre>a2enmod lua </pre></br>
        Open <code>/etc/apache2/mods-enabled/lua.load </code> and add this the end of file:</br>

        <pre>AddHandler lua-script .lua </pre>
        <br/>
        Restart apache.</br>

        <pre>service apache2 restart</pre></br>
        Now we will install Sailor. You can either clone it directly from the <a href="http://github.com/Etiene/sailor" target="_blank">repository</a> or download it through luarocks. We will download it through luarocks since it will also download all the required dependencies.</br>
        <pre>sudo apt-get install luarocks</br>luarocks install sailor</pre>
        <br/>We are almost done! Now can generate your web applications. In this example, we will create an app called Hey Arnold on the directory apache is reading from (usually /var/www). After you're done, you can open your browser and access it on localhost/hey_arnold
        <pre>sailor_create.lua 'Hey Arnold' /var/www</pre>
      </p>
      <a name="wininstallation" class="anchor">&nbsp;</a>
      <h3>Installation - Windows</h3>
        <p>Under Construction!</p>
      <a name="macinstallation" class="anchor">&nbsp;</a>
      <h3>Installation - Mac</h3>
        <p>Under Construction!</p>

      <a name="dep" class="anchor">&nbsp;</a>
    <h3>Dependencies</h3>
    <p>
      If you installed sailor through luarocks, there is no need to worry, all depencies will be installed with it. If you just cloned the repository or downloaded the zip, you should install these dependencies:</p>

      <p>
      If you want to save your models in a database, you will need LuaSQL. I believe it should work with every db LuaSQL supports but so far I have only tested with MySQL. Install luarocks and get these rocks. LuaSQL-MySQL requires you to have mysql installed.</br>

      <pre>luarocks install LuaSQL-MySQL</pre></br>
    <p>
      If you want to use our mailer module, get these rocks with luarocks so we are able to send stuff via SMTP.</br>

      <pre>luarocks install LuaSocket</br>luarocks install LuaSec</pre></br>
      LuaSec requires openssl as a dependency, if you don't already have it please install these and try getting luasec again. If LuaSec can't find your openssl dir, try using these flags, depending on your system's architecture (Linux).</br>

      <pre>luarocks install LuaSec OPENSSL_LIBDIR=/usr/lib/x86_64-linux-gnu</pre>
      or</br>
      <pre>luarocks install LuaSec OPENSSL_LIBDIR=/usr/lib/i386-linux-gnu</pre>
    </p>
    <a name="configuration" class="anchor">&nbsp;</a>
    <h3>Configuration</h3>
    <p>You will find Sailor's config file under <code>conf/conf.lua</code>. This file contains a table with config strings for core Sailor control, database server configuration and SMTP server configuration for mailer module.</p>
    <p><code>sailor.app_name</code> is used as a default title tag for your pages and can be invoked at any time from the rest of your app accessing the conf table.
    </p>
    <p><code>sailor.default_static</code> is about flow control. If defined, sailor will render a specific view as defined, disabling routing. It's useful, for example, for serving a very simple page instead of a complex app or for loading a temporary maintenance page.
    </p>
    <p><code>sailor.default_controller</code> and <code>default_action</code> will define which action from which controller will run by default, when no route is called, aka your index.
    </p>
    <p><code>sailor.layout</code> will define the basic and default layout used for all pages. Sailor is integrated with TwitterBootstrap for an enhanced feel. You can add more layouts on <code>/layouts</code> and set a default here. Layouts can be changed for specific pages by setting it on controller before rendering pages, we will take a look at this part soon.
    <p><code>sailor.route_parameter</code> is for page routing, which is done accessing a get variable, the default is 'r', but you can change it here if you wish.
    <p><code>db.driver</code> is your database driver, example: 'mysql'.
    <p><code>db.host</code> is your database host, example: 'localhost'.
    <p><code>db.user</code> and <code>db.pass</code> are the login information for your database.
    <p><code>db.dbname</code> is the database name. You can leave db configs blank if you are not persisting models.
    <p><code>smtp.server</code> is the server for sending emails. You can leave smtp configs blank if you are not using your application for sending emails.
    <p><code>smtp.user</code> and <code>smtp.server</code> are the login information for your smtp server.
    <p><code>smtp.from</code> is the email address who is sending emails.

    <br/>


    </div>
  </div>
  <!-- /.container -->
</section>