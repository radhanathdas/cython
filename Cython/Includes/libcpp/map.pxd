from pair cimport pair

cdef extern from "<map>" namespace "std":
    cdef cppclass map[T, U]:
        cppclass iterator:
            pair[T,U]& operator*()
            iterator operator++()
            iterator operator--()
            bint operator==(iterator)
            bint operator!=(iterator)
        cppclass reverse_iterator:
            pair[T,U] operator*()
            iterator operator++()
            iterator operator--()
            bint operator==(iterator)
            bint operator!=(iterator)
        #cppclass const_iterator(iterator):
        #    pass
        #cppclass const_reverse_iterator(reverse_iterator):
        #    pass
        map()
        map(map&)
        #map(key_compare&)
        U& operator[](T&)
        #map& operator=(map&)
        bint operator==(map&, map&)
        bint operator!=(map&, map&)
        bint operator<(map&, map&)
        bint operator>(map&, map&)
        bint operator<=(map&, map&)
        bint operator>=(map&, map&)
        U& at(T&)
        iterator begin()
        #const_iterator begin()
        void clear()
        size_t count(T&)
        bint empty()
        iterator end()
        #const_iterator end()
        pair[iterator, iterator] equal_range(T&)
        #pair[const_iterator, const_iterator] equal_range(key_type&)
        void erase(iterator)
        void erase(iterator, iterator)
        size_t erase(T&)
        iterator find(T&)
        #const_iterator find(key_type&)
        pair[iterator, bint] insert(pair[T,U]) # XXX pair[T,U]&
        iterator insert(iterator, pair[T,U]) # XXX pair[T,U]&
        #void insert(input_iterator, input_iterator)
        #key_compare key_comp()
        iterator lower_bound(T&)
        #const_iterator lower_bound(key_type&)
        size_t max_size()
        reverse_iterator rbegin()
        #const_reverse_iterator rbegin()
        reverse_iterator rend()
        #const_reverse_iterator rend()
        size_t size()
        void swap(map&)
        iterator upper_bound(T&)
        #const_iterator upper_bound(key_type&)
        #value_compare value_comp()
