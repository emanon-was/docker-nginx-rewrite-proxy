import os
from jinja2 import Template, Environment, FileSystemLoader

template_env = Environment(loader=FileSystemLoader('templates'))
template = template_env.get_template('proxy.conf.j2')
print(template.render(env=os.environ))
