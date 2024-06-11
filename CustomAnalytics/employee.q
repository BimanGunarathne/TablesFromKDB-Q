\l CustomAnalytics/namegen.q

id:1+ til 2000
ename:names
eage:2000#18+ til 60
edepart:2000?`HR`Finance`Engineering`Marketing`Sales

Employee:([ID:id] Name:ename; Age:eage; Departments:edepart)
\ts show Employee
