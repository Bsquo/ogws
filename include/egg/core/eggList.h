#ifndef EGG_PRIM_LIST_H
#define EGG_PRIM_LIST_H
#include "types_egg.h"
#include "ut_list.h"

namespace EGG
{
	template <typename T>
	class TNw4rList
	{
	public:
		TNw4rList()
		{
			nw4r::ut::List_Init(&mList, T::getLinkOffset());
		}
		
		void append(T * pNode)
		{
			nw4r::ut::List_Append(&mList, pNode);
		}
		
		T * getNext(T * pNode)
		{
			return static_cast<T *>(nw4r::ut::List_GetNext(&mList, pNode));
		}

	private:
		nw4r::ut::List mList;
	};
}

#endif