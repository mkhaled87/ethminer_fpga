set(SOURCES
	PoolURI.cpp PoolURI.h
	PoolClient.h
	PoolManager.h PoolManager.cpp
	testing/SimulateClient.h testing/SimulateClient.cpp
	stratum/EthStratumClient.h stratum/EthStratumClient.cpp
	getwork/EthGetworkClient.h getwork/EthGetworkClient.cpp
)

hunter_add_package(OpenSSL)
find_package(OpenSSL REQUIRED)


add_library(poolprotocols ${SOURCES})
if(APPLE)
	target_link_libraries(poolprotocols PRIVATE devcore ethminer-buildinfo ethash::ethash Boost::system jsoncpp_static OpenSSL::SSL OpenSSL::Crypto)
elseif(WIN32)
	target_link_libraries(poolprotocols PRIVATE devcore ethminer-buildinfo ethash::ethash Boost::system jsoncpp_lib jsoncpp_object OpenSSL::SSL OpenSSL::Crypto crypt32.lib)
else()
	target_link_libraries(poolprotocols PRIVATE devcore ethminer-buildinfo ethash::ethash Boost::system jsoncpp_lib_static OpenSSL::SSL OpenSSL::Crypto)
endif()

target_include_directories(poolprotocols PRIVATE ..)
