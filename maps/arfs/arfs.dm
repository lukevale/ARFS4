#if !defined(USING_MAP_DATUM)

// 1 = Subdeck, 2 = Main Deck, 3 = Centcomm, 4 = Empty, 5 = Hotel, 6 = Mining


	#include "arfs-1.dmm"
	#include "arfs-2.dmm"
	#include "arfs-3.dmm"
	#include "arfs-4.dmm"
	#include "arfs-5.dmm"
	#include "arfs-6.dmm"
	#include "arfs-7.dmm"
	#include "arfs-8.dmm"

	#include "arfs_defines.dm"
	#include "arfs_misc.dm"
	#include "arfs_areas.dm"
	#include "arfs_shuttles.dm"
	#include "arfs_underdark.dm"
	#include "arfs_telecomms.dm"

	#define USING_MAP_DATUM /datum/map/arfs

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring arfs

#endif
