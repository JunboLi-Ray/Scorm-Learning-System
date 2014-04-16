package com.genghis.ptas.system.dao;

import com.genghis.core.page.entity.Page;
import com.genghis.core.page.entity.PageParameter;
import com.genghis.ptas.system.entity.DictDefine;
import com.genghis.ptas.system.entity.DictValues;

import java.util.List;

/**
 * 字典dao接口
 *
 * @author chenl
 * @version 1.0.1
 */

public interface DictDao {

    Page<DictDefine> findDictDefinePageList(PageParameter pageParameter, DictDefine dictDefine);

    void addDictDefine(DictDefine dictDefine);

    void delDictDefine(String dictName);

    DictDefine findDictDefineByDictName(String dictName);

    Boolean checkRepeatDictDefineName(String dictName);

    Page<DictValues> findDictValuesPageList(PageParameter pageParameter, DictValues dictValues);

    void addDictValues(DictValues dictValues);

    void editDictValues(DictValues dictValues);

    void delDictValues(DictValues dictValues);

    DictValues findDictValuesByNameAndCode(DictValues dictValues);

    DictValues findDictValuesByNameAndValue(DictValues dictValues);

    Boolean checkRepeatDictValuesCode(DictValues dictValues);

    List<DictDefine> findAllDictDefine();

    List<DictValues> findAllDictValues();

    List<DictValues> findDictValuesByDictName(String dictName);

    void changeDictNameOfDictValues(DictDefine dictDefine);

}