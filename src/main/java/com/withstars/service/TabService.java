package com.withstars.service;

import com.withstars.domain.Tab;

import java.util.List;

public interface TabService {
    List<Tab> getAllTabs();

    Tab getByTabNameEn(String tabName);
}
