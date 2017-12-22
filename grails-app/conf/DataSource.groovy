dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = url = "jdbc:mysql://localhost:3306/k9home"
        }
    }
    test {
        dataSource {
            /*dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = url = "jdbc:mysql://192.168.10.25:3306/k9home"*/
        }
    }
    production {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = url = "jdbc:mysql://192.168.10.25:3306/k9home"
        }
    }
}
