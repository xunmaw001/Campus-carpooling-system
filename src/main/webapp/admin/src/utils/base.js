const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm19154/",
            name: "ssm19154",
            // 退出到首页链接
            indexUrl: ''
        };
    },
    getProjectName(){
        return {
            projectName: "基于Java的校园拼车系统"
        } 
    }
}
export default base
