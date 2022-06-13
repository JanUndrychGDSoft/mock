package info.gdsoft.test

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.data.r2dbc.core.R2dbcEntityTemplate
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class TestEndpoint {

    @Autowired
    private lateinit var template: R2dbcEntityTemplate

    @GetMapping("/test")
    fun test() = template
        .select(Strs::class.java)
        .all()



}