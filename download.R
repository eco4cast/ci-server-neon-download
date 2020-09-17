#Script to download neon data used in NEON Ecological Forecasting Challenge

print(paste0("Running download.R at ", Sys.time()))

renv::restore()

Sys.setenv("NEONSTORE_HOME" = "/efi_neon_challenge/neonstore")
#start_date = "2020-04-01"
start_date = NA

# Beetle
# DP1.10022.001
print("Downloading: DP1.10022.001")
neonstore::neon_download(product="DP1.10022.001", type = "expanded", start_date = start_date, .token = Sys.getenv("NEON_TOKEN"))


# Ticks
# DP1.10093.001
print("Downloading: DP1.10093.001")
neonstore::neon_download(product="DP1.10093.001", type = "expanded", start_date = start_date, .token = Sys.getenv("NEON_TOKEN"))

# Terrestrial
#DP4.00200.001
sites <- c("BART", "KONZ", "SRER", "OSBS")
print("Downloading: DP4.00200.001")
neonstore::neon_download(product="DP4.00200.001", site = sites, type = "basic", start_date = start_date, .token = Sys.getenv("NEON_TOKEN"))

# Aquatic
#DP1.20053.001
#DP1.20288.001
sites <- c("BARC", "FLNT")
print("Downloading: DP1.20053.001")
neonstore::neon_download(product="DP1.20053.001",site = sites, type = "expanded", start_date = start_date, .token = Sys.getenv("NEON_TOKEN"))
print("Downloading: DP1.20288.001")
neonstore::neon_download(product="DP1.20288.001",site = sites, type = "expanded", start_date = start_date, .token = Sys.getenv("NEON_TOKEN"))
print("Downloading: ")
neonstore::neon_download("DP1.20264.001", site =  sites, type = "expanded", start_date = start_date, .token = Sys.getenv("NEON_TOKEN"))

#Phenology

