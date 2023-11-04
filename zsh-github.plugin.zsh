wclone() {
    mkdir -p $HOME/SAPDevelop/gh/wdf/$1
    cd $HOME/SAPDevelop/gh/wdf/$1
    case $# in
        2) 
            git clone git@github.wdf.sap.corp:$1/$2.git
            cd $2
            ;;
        3)
            git clone git@github.wdf.sap.corp:$1/$2.git -b $3
            cd $2
            ;;
        4)
            git clone git@github.wdf.sap.corp:$1/$2.git -b $3 $4
            cd $4
            ;;
        *)
            echo "Unrecognized number of parameters $#"
            echo "Usage:"
            echo "wclone <org> <repo>"
            echo "wclone <org> <repo> <branch>"
            echo "wclone <org> <repo> <branch> <dir>"
            ;;
    esac
}

tclone() {
    mkdir -p $HOME/SAPDevelop/gh/tools/$1
    cd $HOME/SAPDevelop/gh/tools/$1
    case $# in
        2) 
            gh repo clone github.tools.sap/$1/$2
            cd $2
            ;;
        3)
            gh repo clone github.tools.sap/$1/$2 -- -b $3
            cd $2
            ;;
        4)
            gh repo clone github.tools.sap/$1/$2 $4 -- -b $3
            cd $4
            ;;
        *)
            echo "Unrecognized number of parameters $#"
            echo "Usage:"
            echo "tclone <org> <repo>"
            echo "tclone <org> <repo> <branch>"
            echo "tclone <org> <repo> <branch> <dir>"
            ;;
    esac
}

pclone() {
    mkdir -p $HOME/SAPDevelop/gh/tools/$1
    cd $HOME/SAPDevelop/gh/tools/$1
    case $# in
        2) 
            gh repo clone $1/$2
            cd $2
            ;;
        3)
            gh repo clone $1/$2 -- -b $3
            cd $2
            ;;
        4)
            gh repo clone $1/$2 $4 -- -b $3
            cd $4
            ;;
        *)
            echo "Unrecognized number of parameters $#"
            echo "Usage:"
            echo "pclone <org> <repo>"
            echo "pclone <org> <repo> <branch>"
            echo "pclone <org> <repo> <branch> <dir>"
            ;;
    esac
}
