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
          <li><a href="?r=site/doc" class="more-link">Overview</a>
            <ul>
              <li><a href="#dirtree" class="more-link">Directory Tree Info</a></li>
              <li><a href="#installation" class="more-link">Installation</a>
                <ul>
                  <li><a href="#modeldep" class="more-link">DB Dependencies</a></li>
                  <li><a href="#mailerdep" class="more-link">Mailer Dependencies</a></li>
                </ul>
              </li>
              <li><a href="#configuration" class="more-link">Configuration</a>
            </ul>
          </li>
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
      <code>/doc</code> - this one is supposed to have documentation.<br/>
      <code>/layouts</code> - default layout files. </br>
      <code>/models</code> - models you will make!.<br/>
      <code>/src</code> - Lua modules with nice stuff from sailor and other places.<br/>
      <code>/views</code> - this is where your lua pages in .lp will go.
      </p>
      <a name="installation" class="anchor">&nbsp;</a>
    </div>
    <div class="doc">
      <h3>Installation</h3>
      <p>
        If you don't have it already, install Lua. Sailor is compatible with both 5.1 and 5.2.<br/>
        <pre>apt-get install lua5.2</pre><br/>
        Install apache2.4<br/>
        <pre>apt-get install apache2</pre><br/>
        Some systems install apache2.2 by default, as Ubuntu, for example. You can get 2.4 by<br/>
        <pre>
  apt-add-repository ppa:ptn107/apache</br>
  apt-get update</br>
  apt-get install apache2
        </pre>
        <br/>
        Then you can finally install mod_lua for Apache.</br>
        <pre>a2enmod lua </pre></br>
        Open <code>/etc/apache2/mods-enabled/lua.load </code> and add at the end of file</br>

        <pre>AddHandler lua-script .lua </pre>
        <br/>
        Now you are ready to go!</br>

        <pre>service apache2 restart</pre></br>
        Clone the contents of this repository to the dir apache is reading from and access it at localhost/sailor.</br>
      </p>
      <a name="modeldep" class="anchor">&nbsp;</a>
    </div>
    <div class="doc">
    <h3>Dependencies for persisting models</h3>
    <p>
      If you want to save your models in a database, you will need LuaSQL. I believe it should work with every db LuaSQL supports but so far I have only tested with MySQL. Install luarocks and get these rocks. LuaSQL-MySQL requires you to have mysql installed.</br>

      <pre>apt-get install luarocks</br>luarocks install LuaSQL-MySQL</pre></br>
      If LuaSQL-MySQL can't find its dir, try using these flags and specify MySQL dir.</br>

      <pre>luarocks install LuaSQL-MySQL MYSQL_INCDIR=/usr/include/mysql</pre>
    </p>
    <a name="mailerdep" class="anchor">&nbsp;</a>
    <h3>Dependencies for the mailer module</h3>
    <p>
      If you want to use our mailer module, however, you will need a couple more of tricks. Get these rocks with luarocks so we are able to send stuff via SMTP.</br>

      <pre>luarocks install LuaSocket</br>luarocks install LuaSec</pre></br>
      LuaSec requires openssl as a dependency, if you don't already have it please install these and try getting luasec again.</br>

      <pre>apt-get install openssl libssl-dev</pre></br>
      If LuaSec can't find your openssl dir, try using these flags, depending on your system's architecture.</br>

      <pre>luarocks install LuaSec OPENSSL_LIBDIR=/usr/lib/x86_64-linux-gnu</pre>
      or</br>
      <pre>luarocks install LuaSec OPENSSL_LIBDIR=/usr/lib/i386-linux-gnu</pre>
    </p>
    <a name="configuration" class="anchor">&nbsp;</a>
    <h3>Configuration</h3>
    <p>You will find Sailor's config file under <code>conf/conf.lua</code>. This file contains a table with config strings for core Sailor control, database server configuration and SMTP server configuration for mailer module.</p>
    <p><code>app_name</code> is used as a default title tag for your pages and can be invoked at any time from the rest of your app accessing the conf table.
    </p>
    <p><code>default_static</code> is about flow control. If defined, sailor will render a specific view as defined, disabling routing. It's useful, for example, for serving a very simple page instead of a complex app or for loading a temporary maintenance page.
    </p>
    <p><code>default_controller</code> and <code>default_action</code> will define which action from which controller will run by default, when no route is called, aka your index.
    </p>
    <p><code>layout</code> will define the basic and default layout used for all pages. Sailor is integrated with TwitterBootstrap for an enhanced feel. You can add more layouts on <code>/layouts</code> and set a default here. Layouts can be changed for specific pages by setting it on controller before rendering pages, we will take a look at this part soon.
    <br/>
    <br/>
    Under construction!


    </div>
  </div>
  <!-- /.container -->
</section>