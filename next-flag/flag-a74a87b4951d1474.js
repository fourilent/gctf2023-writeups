(self.webpackChunk_N_E = self.webpackChunk_N_E || []).push([
  [270],
  {
    3188: function (e, t) {
      'use strict';
      /*!
       * cookie
       * Copyright(c) 2012-2014 Roman Shtylman
       * Copyright(c) 2015 Douglas Christopher Wilson
       * MIT Licensed
       */ (t.parse = function (e, t) {
        if ('string' != typeof e)
          throw TypeError('argument str must be a string');
        for (
          var i = {}, o = e.split(';'), s = (t || {}).decode || r, n = 0;
          n < o.length;
          n++
        ) {
          var a = o[n],
            u = a.indexOf('=');
          if (!(u < 0)) {
            var c = a.substring(0, u).trim();
            if (void 0 == i[c]) {
              var p = a.substring(u + 1, a.length).trim();
              '"' === p[0] && (p = p.slice(1, -1)),
                (i[c] = (function (e, t) {
                  try {
                    return t(e);
                  } catch (t) {
                    return e;
                  }
                })(p, s));
            }
          }
        }
        return i;
      }),
        (t.serialize = function (e, t, r) {
          var s = r || {},
            n = s.encode || i;
          if ('function' != typeof n)
            throw TypeError('option encode is invalid');
          if (!o.test(e)) throw TypeError('argument name is invalid');
          var a = n(t);
          if (a && !o.test(a)) throw TypeError('argument val is invalid');
          var u = e + '=' + a;
          if (null != s.maxAge) {
            var c = s.maxAge - 0;
            if (isNaN(c) || !isFinite(c))
              throw TypeError('option maxAge is invalid');
            u += '; Max-Age=' + Math.floor(c);
          }
          if (s.domain) {
            if (!o.test(s.domain)) throw TypeError('option domain is invalid');
            u += '; Domain=' + s.domain;
          }
          if (s.path) {
            if (!o.test(s.path)) throw TypeError('option path is invalid');
            u += '; Path=' + s.path;
          }
          if (s.expires) {
            if ('function' != typeof s.expires.toUTCString)
              throw TypeError('option expires is invalid');
            u += '; Expires=' + s.expires.toUTCString();
          }
          if (
            (s.httpOnly && (u += '; HttpOnly'),
            s.secure && (u += '; Secure'),
            s.sameSite)
          )
            switch (
              'string' == typeof s.sameSite
                ? s.sameSite.toLowerCase()
                : s.sameSite
            ) {
              case !0:
              case 'strict':
                u += '; SameSite=Strict';
                break;
              case 'lax':
                u += '; SameSite=Lax';
                break;
              case 'none':
                u += '; SameSite=None';
                break;
              default:
                throw TypeError('option sameSite is invalid');
            }
          return u;
        });
      var r = decodeURIComponent,
        i = encodeURIComponent,
        o = /^[\u0009\u0020-\u007e\u0080-\u00ff]+$/;
    },
    139: function (e, t, r) {
      (window.__NEXT_P = window.__NEXT_P || []).push([
        '/flag',
        function () {
          return r(8087);
        },
      ]);
    },
    8087: function (e, t, r) {
      'use strict';
      r.r(t);
      var i = r(1527),
        o = r(959),
        s = r(5165),
        n = r(6530);
      t.default = () => {
        let e = (0, s.useRouter)(),
          [t, r] = (0, o.useState)(!1),
          [a, u] = (0, o.useState)('');
        return (
          (0, o.useEffect)(() => {
            let t = (0, n.parseCookies)().session;
            'ca65fb7e5a62cc4133ea9cb3a486f910' === t
              ? (r(!0),
                fetch('/api/flag')
                  .then((e) => e.json())
                  .then((e) => {
                    u(e.flag);
                  }))
              : ((0, n.destroyCookie)(null, 'session'), e.push('/'));
          }, [e]),
          (0, i.jsx)(i.Fragment, {
            children: t && (0, i.jsx)('div', { children: a }),
          })
        );
      };
    },
    5165: function (e, t, r) {
      e.exports = r(9507);
    },
    6530: function (e, t, r) {
      'use strict';
      var i =
        (this && this.__assign) ||
        function () {
          return (i =
            Object.assign ||
            function (e) {
              for (var t, r = 1, i = arguments.length; r < i; r++)
                for (var o in (t = arguments[r]))
                  Object.prototype.hasOwnProperty.call(t, o) && (e[o] = t[o]);
              return e;
            }).apply(this, arguments);
        };
      Object.defineProperty(t, '__esModule', { value: !0 }),
        (t.destroyCookie = t.setCookie = t.parseCookies = void 0);
      var o = r(3188),
        s = r(6594),
        n = r(5577);
      function parseCookies(e, t) {
        var r, i;
        return (
          null ===
            (i =
              null === (r = null == e ? void 0 : e.req) || void 0 === r
                ? void 0
                : r.headers) || void 0 === i
            ? void 0
            : i.cookie
        )
          ? o.parse(e.req.headers.cookie, t)
          : n.isBrowser()
          ? o.parse(document.cookie, t)
          : {};
      }
      function setCookie(e, t, r, a) {
        var u, c;
        if (
          (void 0 === a && (a = {}),
          (null === (u = null == e ? void 0 : e.res) || void 0 === u
            ? void 0
            : u.getHeader) && e.res.setHeader)
        ) {
          if (
            null === (c = null == e ? void 0 : e.res) || void 0 === c
              ? void 0
              : c.finished
          )
            return (
              console.warn(
                'Not setting "' + t + '" cookie. Response has finished.'
              ),
              console.warn('You should set cookie before res.send()'),
              {}
            );
          var p = e.res.getHeader('Set-Cookie') || [];
          'string' == typeof p && (p = [p]), 'number' == typeof p && (p = []);
          var f = s.parse(p, { decodeValues: !1 }),
            l = n.createCookie(t, r, a),
            d = [];
          f.forEach(function (e) {
            if (!n.areCookiesEqual(e, l)) {
              var t = o.serialize(
                e.name,
                e.value,
                i(
                  {
                    encode: function (e) {
                      return e;
                    },
                  },
                  e
                )
              );
              d.push(t);
            }
          }),
            d.push(o.serialize(t, r, a)),
            e.res.setHeader('Set-Cookie', d);
        }
        if (n.isBrowser()) {
          if (a && a.httpOnly)
            throw Error('Can not set a httpOnly cookie in the browser.');
          document.cookie = o.serialize(t, r, a);
        }
        return {};
      }
      function destroyCookie(e, t, r) {
        return setCookie(e, t, '', i(i({}, r || {}), { maxAge: -1 }));
      }
      (t.parseCookies = parseCookies),
        (t.setCookie = setCookie),
        (t.destroyCookie = destroyCookie),
        (t.default = {
          set: setCookie,
          get: parseCookies,
          destroy: destroyCookie,
        });
    },
    5577: function (e, t) {
      'use strict';
      var r =
        (this && this.__assign) ||
        function () {
          return (r =
            Object.assign ||
            function (e) {
              for (var t, r = 1, i = arguments.length; r < i; r++)
                for (var o in (t = arguments[r]))
                  Object.prototype.hasOwnProperty.call(t, o) && (e[o] = t[o]);
              return e;
            }).apply(this, arguments);
        };
      function hasSameProperties(e, t) {
        var r = Object.getOwnPropertyNames(e),
          i = Object.getOwnPropertyNames(t);
        if (r.length !== i.length) return !1;
        for (var o = 0; o < r.length; o++) {
          var s = r[o];
          if (e[s] !== t[s]) return !1;
        }
        return !0;
      }
      Object.defineProperty(t, '__esModule', { value: !0 }),
        (t.areCookiesEqual =
          t.hasSameProperties =
          t.createCookie =
          t.isBrowser =
            void 0),
        (t.isBrowser = function () {
          return 'undefined' != typeof window;
        }),
        (t.createCookie = function (e, t, i) {
          var o = i.sameSite;
          !0 === o && (o = 'strict'), (void 0 === o || !1 === o) && (o = 'lax');
          var s = r(r({}, i), { sameSite: o });
          return delete s.encode, r({ name: e, value: t }, s);
        }),
        (t.hasSameProperties = hasSameProperties),
        (t.areCookiesEqual = function (e, t) {
          var i = e.sameSite === t.sameSite;
          return (
            'string' == typeof e.sameSite &&
              'string' == typeof t.sameSite &&
              (i = e.sameSite.toLowerCase() === t.sameSite.toLowerCase()),
            hasSameProperties(
              r(r({}, e), { sameSite: void 0 }),
              r(r({}, t), { sameSite: void 0 })
            ) && i
          );
        });
    },
    6594: function (e) {
      'use strict';
      var t = { decodeValues: !0, map: !1, silent: !1 };
      function isNonEmptyString(e) {
        return 'string' == typeof e && !!e.trim();
      }
      function parseString(e, r) {
        var i,
          o,
          s,
          n,
          a = e.split(';').filter(isNonEmptyString),
          u =
            ((i = a.shift()),
            (o = ''),
            (s = ''),
            (n = i.split('=')).length > 1
              ? ((o = n.shift()), (s = n.join('=')))
              : (s = i),
            { name: o, value: s }),
          c = u.name,
          p = u.value;
        r = r ? Object.assign({}, t, r) : t;
        try {
          p = r.decodeValues ? decodeURIComponent(p) : p;
        } catch (e) {
          console.error(
            "set-cookie-parser encountered an error while decoding a cookie with value '" +
              p +
              "'. Set options.decodeValues to false to disable this feature.",
            e
          );
        }
        var f = { name: c, value: p };
        return (
          a.forEach(function (e) {
            var t = e.split('='),
              r = t.shift().trimLeft().toLowerCase(),
              i = t.join('=');
            'expires' === r
              ? (f.expires = new Date(i))
              : 'max-age' === r
              ? (f.maxAge = parseInt(i, 10))
              : 'secure' === r
              ? (f.secure = !0)
              : 'httponly' === r
              ? (f.httpOnly = !0)
              : 'samesite' === r
              ? (f.sameSite = i)
              : (f[r] = i);
          }),
          f
        );
      }
      function parse(e, r) {
        if (((r = r ? Object.assign({}, t, r) : t), !e)) return r.map ? {} : [];
        if (e.headers) {
          if ('function' == typeof e.headers.getSetCookie)
            e = e.headers.getSetCookie();
          else if (e.headers['set-cookie']) e = e.headers['set-cookie'];
          else {
            var i =
              e.headers[
                Object.keys(e.headers).find(function (e) {
                  return 'set-cookie' === e.toLowerCase();
                })
              ];
            i ||
              !e.headers.cookie ||
              r.silent ||
              console.warn(
                'Warning: set-cookie-parser appears to have been called on a request object. It is designed to parse Set-Cookie headers from responses, not Cookie headers from requests. Set the option {silent: true} to suppress this warning.'
              ),
              (e = i);
          }
        }
        return (Array.isArray(e) || (e = [e]),
        (r = r ? Object.assign({}, t, r) : t).map)
          ? e.filter(isNonEmptyString).reduce(function (e, t) {
              var i = parseString(t, r);
              return (e[i.name] = i), e;
            }, {})
          : e.filter(isNonEmptyString).map(function (e) {
              return parseString(e, r);
            });
      }
      (e.exports = parse),
        (e.exports.parse = parse),
        (e.exports.parseString = parseString),
        (e.exports.splitCookiesString = function (e) {
          if (Array.isArray(e)) return e;
          if ('string' != typeof e) return [];
          var t,
            r,
            i,
            o,
            s,
            n = [],
            a = 0;
          function skipWhitespace() {
            for (; a < e.length && /\s/.test(e.charAt(a)); ) a += 1;
            return a < e.length;
          }
          for (; a < e.length; ) {
            for (t = a, s = !1; skipWhitespace(); )
              if (',' === (r = e.charAt(a))) {
                for (
                  i = a, a += 1, skipWhitespace(), o = a;
                  a < e.length &&
                  '=' !== (r = e.charAt(a)) &&
                  ';' !== r &&
                  ',' !== r;

                )
                  a += 1;
                a < e.length && '=' === e.charAt(a)
                  ? ((s = !0), (a = o), n.push(e.substring(t, i)), (t = a))
                  : (a = i + 1);
              } else a += 1;
            (!s || a >= e.length) && n.push(e.substring(t, e.length));
          }
          return n;
        });
    },
  },
  function (e) {
    e.O(0, [774, 888, 179], function () {
      return e((e.s = 139));
    }),
      (_N_E = e.O());
  },
]);
