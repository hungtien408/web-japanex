using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;

namespace TestVanchuyen.Helpers
{
    public static class CacheHelper
    {
        public static void Add<T>(T o, string key)
        {
            HttpContext.Current.Cache.Insert(
                key,
                o,
                null,
                DateTime.Now.AddMinutes(1440),
                System.Web.Caching.Cache.NoSlidingExpiration);
        }

        public static void Clear(string key)
        {
            HttpContext.Current.Cache.Remove(key);
        }


        public static bool Exists(string key)
        {
            return HttpContext.Current.Cache[key] != null;
        }


        public static bool Get<T>(string key, out T value)
        {
            try
            {
                if (!Exists(key))
                {
                    value = default(T);
                    return false;
                }

                value = (T)HttpContext.Current.Cache[key];
            }
            catch
            {
                value = default(T);
                return false;
            }

            return true;
        }
    }
}