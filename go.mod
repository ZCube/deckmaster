module github.com/muesli/deckmaster

go 1.17

require (
	github.com/BurntSushi/toml v1.2.1
	github.com/atotto/clipboard v0.1.4
	github.com/flopp/go-findfont v0.1.0
	github.com/golang/freetype v0.0.0-20170609003504-e2365dfdc4a0
	github.com/jezek/xgb v1.1.0
	github.com/jezek/xgbutil v0.0.0-20210302171758-530099784e66
	github.com/lucasb-eyer/go-colorful v1.2.0
	github.com/mitchellh/go-homedir v1.1.0
	github.com/muesli/streamdeck v0.4.0
	github.com/nfnt/resize v0.0.0-20180221191011-83c6a9932646
	github.com/shirou/gopsutil v3.21.11+incompatible
	golang.org/x/image v0.16.0
)

require (
	github.com/BurntSushi/freetype-go v0.0.0-20160129220410-b763ddbfe298 // indirect
	github.com/BurntSushi/graphics-go v0.0.0-20160129215708-b43f31a4a966 // indirect
	github.com/avast/retry-go/v4 v4.6.0 // indirect
	github.com/go-ole/go-ole v1.2.6 // indirect
	github.com/karalabe/hid v1.0.1-0.20240306101548-573246063e52 // indirect
	github.com/tklauser/go-sysconf v0.3.9 // indirect
	github.com/tklauser/numcpus v0.3.0 // indirect
	github.com/yusufpapurcu/wmi v1.2.2 // indirect
	golang.org/x/sys v0.5.0 // indirect
)

replace github.com/muesli/streamdeck => github.com/zcube/streamdeck v0.0.0-20240517113003-b16ef899946a

replace github.com/karalabe/hid => github.com/zcube/hid v0.0.0-20240517112046-6cac98305427
