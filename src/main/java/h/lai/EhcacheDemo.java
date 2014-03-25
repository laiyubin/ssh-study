package h.lai;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

import java.io.Serializable;

/**
 * User: wlai
 * Date: 10/23/13
 * Time: 2:35 PM
 */
public class EhcacheDemo {
    public static void main(String[] args) throws InterruptedException {
        CacheManager manager = CacheManager.getInstance();
        Cache memoryOnlyCache = manager.getCache("cache1");
        memoryOnlyCache.flush();
     //   manager.addCache(memoryOnlyCache);
        for (int i = 0; i < 100; i++) {
            CacheTest ct = new CacheTest();
            ct.setName("ct" + i);
            Element element = new Element("ct" + i, ct);
            memoryOnlyCache.put(element);
        }

        Element em = memoryOnlyCache.get("ct5");
        CacheTest ct = (CacheTest) em.getObjectValue();
        System.out.println(ct.getName());
        manager.shutdown();
    }
}

class CacheTest implements Serializable {
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
