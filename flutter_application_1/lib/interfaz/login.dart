import 'package:flutter/material.dart';
import 'package:flutter_application_1/proceso/autenticacion.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final email = TextEditingController();
final password = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login/Registro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  image: NetworkImage(
                      "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAL0AAAELCAMAAAC77XfeAAABKVBMVEX///94ugB7vABRqQBarABfrwBVqwD///1qtABwuABMpwFisQD//v9yuABstgFlsgDw9uiFwRn09PTa2trn5+fNzc3y8vKNjpC8vLzY2Njr6+uSk5Wam53FxcXi4uJ8fX96e32lpae0tLSurq6Gh4nN47G12IxBowCnp6no8ttyc3VWqx/h8NNjYWlsbG/BvsTJ4rWo1IrE2Ln2+/KOyG3m8dSLh5F4uyW72qTX6ca625fD4aG02IG32YzF4Liy15mRxHV7u02Bvl2/3rJzuVFrtSu4zq3J2sDI0b+3srxxbXZbWmTL18O5yK9mtjaJw1uCwU2w1JufznR+vj/UzteZzWqHv0gmnQB2uSOcymre7cOay1b0++aHwGmFgImFwjfP0smVyUOx1nc+MMfxAAAVaUlEQVR4nO2dC1vaSteGwyEnyEkrFgWtQCmkRQVTFUTFtpvX2naXbqxuD91q+/9/xLfWmgnHxBrE1n5Xnve6dpUg3rN8Zs2ayUxeQQgVKlSoUKFChQoVKlSoUKFChQoVKlSoUKFChQoVKlSoUKFChQoVKlSoUKFChQoVKlSoUKH+H0mWZfxH02RBG7+q0TsE+RdD3VkDyI5lV4ZkW+wtske7HoVku7Hfqh28aUslT0lva/v274bsS2NWkZ3Kfuu/N8icQMVGha/gBWxC4r93Dv7M72ZHOVa19radKBGyxDQGz5vABS34Cxrwu/Ch45F5nUYL4o3cLrY/fWIAn1pwYFMn/z2dwKoetAFJ8tQd8IH/rY3W++XkcqPmT07wnK8Hyh0/LIi/8wvhqYc61Q6Qx+NxSaL/jEEnpPaX17Vaq1V8t7Hxvw0m+Lfeqn2JDbehlGiwD/01cupvwAHxATFuzDPx9kmrtX/4PrV+lMs+v/qw9hG0yvRxFb++yubfv6u9GmxA6cBrWJu2KC9C1GPSADjBwx+i/aVWP/yUOspufUDUNdTLceHLqx+vyn+3Pvf5S3/JDx1+HPcrXXEQHQUhj3da+59ujrauCBoQV0DPXD3nYt+trFATVj9+KP+v0+8Unx+8dnDqx+AXcdAxsUS7W/10k38O8V4j6j7uUw/xVlALVle3/n7dw3/zcLHHD7ZqohQXxT59LCF2i3aqvILxRuwecwaV9RC+Tk2gBqytfdzaeMX5S6+Fh0r7mmCfS5IIYuBiXEq0a5UnhatVJCdwBs0oc0xl/J8r9hJrA7YAPQQOSrvhLxUfwPo0EFY6ibjoCg1z3LK/ZtfALD1wFxpBC6j8qOhVbAVrAOf/uPWPi29NPfYIb3+J9dlFKdZ+YX/NrGLMe+BEzZHTfS1x9V6gRvAGED/Y/4rjl95MGx5kd2Jiss8udhtPcmAXRs7BCXuQN+Ul3o5eA5Af7L+6VeP41SliwwxCFqwu2D3J6eOxdt1aX2HonBzBXWxOuYB6MiR6aYE3gRqA/BR+iH7hM/NOzJme86H2k3eghwI8CizTaTzJ9tCRnMA5NkdeZpobEb2IraAGcH4KP+B//JsHvzYtdsySjbN4ksFj3Lt26grZCZ2RM3CXGiAXQfOk2UHhC3AFGwEtYA1AfsIH71+53rGmBK8JzrnEw56EDNm11j+sDaNzcMQmaALVUB4fp2nYCmgBNAD/Ahh/DH8Gu+5q+hWj/29K9ELVtQzCAzsPO6Jj0IkcwDm2F7FHG3gD6A+w1MMH6+9PLfjYdZwTqccundjE3kPvkSP43biHGwD8Ln42i95ZzX2ZVrUJ9A2zZxrpuPL16uUzN+yIzsgBfLLP11x+xGfeWft4yIN/z6kKLhDUIPAmgzeLc1trxI7oSz30e4VodnYE/+Va9q2bdu6DD+zWcdwEdtMUxVjXyfXZIews6PchJ2H4OX6Z8k4v+LF7xV7WbATHyJuiUvn6cuW5yw5hv2/Q+yL8VKof/NxfLPj794EXKqKJ9IAv7c5mXvbZIeze6DAm84DJfF3qLvFDfBb8HHbctdV3FPzS28lLTVmwRZNJPKt8BdMQeypFYff9KRgcGvv7+zb+3khy826/a3Z+jvAh72DweznfmnyBxDIVBh8/cbIYeJf9FsdAk0/EGC53vIJ2RHWfRUp5dOFvtu8dDP4KG3BL9cmSJhrgOqkgflJsLq9A4MvomZ+wy0JRSSY7tdrrVyVHEKKqN72sFU8rw79v1vUOCz6vdiYslCFwXdFUAD9pVtbXnmdyBc5+209pAG+eO/QBDWiKH70gKNIwvaCRd3jwX64V3vCUPxm+UI0rCK+I345eUuChr97ODk22Isaue0MBLOs6h7ovNwHrzWfxzRHzkHd48FfWPrRK98g6mqOYRC9trq+wwP+MHWn29O3BFyD21ovj45pDpNbOyfaXmgOmbDbPxFqrNRRYjfIOBj/zFKxzeK9S7TyJ8Eq8+HUlm8uDaebm79CBZvTiEL1exGEuISH+ZhIqDimRgOIrmjTMROnf4TIMxlwMPuu3q3mWdV5NBF8RMfBmsru4ki2nl35qGiYrMmz0KBjJkauxUgsHj5kLB8ZuKL5k2z4Tq3ZlxNSzLPjMOlvdiQtNWTilHmueyc8zhTQE/m4Fga0rQ16ORi7R/rXSZ7C7Qyt8jVIcXbQdrwijFak2v+wGH6zzroSLuKV3wemFhki+ERv5p+U0OP6OWXdTV4YSdFRtYPaqlF7xm4eOtZ8oYYOQfmwcxeBDv2XWeY83MbBMDl6qnbIue774PAfw83f9MUtXh/7SPOcgPTBcnJ+JiVKshF8j/ZhYzs8XyDrpON2e+By8WKiIBtInrWw2n7qja1BOVL0Yjn2PHvKRIp526+8S/vTCLO+3MGCtZV7TvbpS0CVZWTjB0BvJ3eWn+dRykBr4Uv8O1qFfJ/dHK4q9rdM3VqmEL51507N+S8aHjI83h0p2sGJBEyyWLU0nm1sKAi9rF4bSdG89acP0RfWS9dpb6GHAheBD1oHh9uNGiWIfeLxqctfPPU0veMPLY1/w784Nc48SoVN3tGF6fQZfbrvOaXh1x9lFsg4aH0odom8FY4fyzDDA92KlXE4t+rynWCdVxyrYy2RS6dS6bxKlEedAjz4t1sV2jGLfTbbrtfFczqyDxl9ZSzHfHwSjFywR6A1zW8ukl308Z4m4nhmPJ8fDVzyTJKiQYzVIlWqS0f9bQlfpyXiiY//7L7beOouNjrWk+TnX+GtHEiWdoGVm3UT65E4ql/LOlTJ5i6ZcDa+mNRoNXp3J/B/WjxtV2/1akCvwHh/roPGf4dyc7usGpO8o6BzxWy697A2vCTqrI5LxjsdlZPKaE2n99gh+iQSsw+lfXtWYdQJmTIPot7VsyrvLanIjyehFUbLGPlwmefxOefBGvqzJXsMQVAsLrNtCymT0wUp8C42jmN3lgnfoaTwwWOxFaWfK9/fI+NRtP9YZfbAdMI0kddriUtqnQoDaH3MSW09uT5keh1votpgy91nK9BoY/CQLO9Rpxc18ym+Qw26tmMfoHDHm1W/vIdZtc1mg30hMQH+ioO+TctnHOAIbD5L1Lt3+eT0F5AFp1G0H6YMMtjAMYuiN69mCz0glVKhjxO2qRMF3xkZemWUcZ3zHk8a6rez45SUwPnRbTDo9+kB3sBzD0MH2J3Npn4wj/KB+cSY4cbp/VR+g//Gj293FJSRr5wy3Rr2uuJvmnPNut7vn4G3HmhKTYvED27v2paSDKROmtrSNpx4AXrZNVQW4na9Lfs1T2WAGc1+yTrt/Y9uZiUR041wQduL8FlHpgP8hLB0uKZChur1L/3h+/OycS/83i30QeqEK9KqRvFhP+byhaCK+aMlaA2+ZxxOVXu+WZ6LRSGTbucR1LColpMRb1jZLhyv6qbNtYraiS94r3LOUMvv0gWIv7ChArya/5Z/4vOG7AfTKMf7d6W55rNuDYPTqtcHHMtzwwkNsReCSvr3Nci2/tO9TK0xOf470hiGX5zwuwi/bVPByson0NdpnkeiNhoxeh+tiPCnFCTHGlgWIHmwFJYjYu+S1QH8/+lMD6bdnC15jFXh4z0A606IV8hgGMdGb97v0ynXVkZ0m32xEBuH0qnnacDSrFmMN81gx0Hr0hxP4fpvoLxfzXikHShUgUA3lUqCK64wscDxCr5ywurIaowAn0PnMOSp0dtyTLLToklf526ffSEhBM6ajqrqhKj+WPROmJhQNpE8WWVtqEvVMtxThvr90c2GHttaVKi59xNgTeP0mUsNK49bB4cqlj0kBRyuLUo7SXPBJmJc60pv8t9ox2uRywHsfozdeuJ2xGiNEXIVnsVeKbhRq7JJHnTFIH7RSqBA91GieCVP+piA9WIPNN4RjtguQZ/wRes1OEOKB4MZe6S1z7rNLHsbvOQffIgWjLyK9al6kFzwvv1CR3rxwv69LSJ/gf93R2DsM8T/4fpS+wi557KXgsV9ZrSO9FKhCrps60vule+iTGPtmkVSvt4g+9sabXiDExF/CeOy//YT++cqHHUYfZB22RYOV6XhNTWThwogw32N9RvsvWeJOWNRRfenHY2/1TTVKT855jjNDog8AL+xiwlQNp+AxWMnQZxm94c6txF5Opzd4078VxmNv+8ce6MtAn3kdo121QejPiV53vOpj2VIjo/R80JRkr9hb/r2W+96jUnPpy8dE3w5Cf0n0217VPUy7sFDUdX4rkcVdop3HpQbdmxqh54itUXpoad0/YzL6tXW2o7kTZOp5C70gQAEM9MbuC1CN6zX9EnLHGD1P6pVR32u9gWx8wQDHWpzXrt2Q7cGTAVZhiR5nVh5lTkMl+uuhF2UWIuLg9O46gxznlYKsuWNtEUslWdNsVil8Hv8lQA8zw8yztb8Z/T9BYn+KoVe96c8jSK80Bz9PFljnInvwOucab/IAZVcixAOhF3uYucg0mTmmS14VmLa4QPRssOoNJXek133pnQij/zYYDFloQDElsRU7Tm+cVR3cvEldAipkuV9jKtcXuEXvWOIVskd9P4f0T599aLGEWQnmHOiWXs6RhSZOj2B+NPoj7JhDqQFTbre+T4pmnBXxblLk9LqRjCu4jZkueZWPSI9D7dYBnQQpBTpHQ/S6R3kvC98jSG8UR3+E9c0E1AMuPZR57twqwbeju/W9MXDpwGtePsuG2pc5ljDjgVa7fOm1TT1KAM5oLColoi85PXrFcOe1iTf87W7saQ2RhomE90oQ0mPCTNNxp9jbAOw0WgF9xGO0+qET2O54MN6U6MDOP72M+QI3JSXFeCzRct/MK+TmuchCH4vXvaM6j/SQMN/HeMIMol2KvWqN0cu7pOLY0q8sOzuY+A9a/Xxv144N0ey0rF6X6+X7SvfaTJ516rLgfTdwntI9dFpGH2w39Y6C8IrlVef8VD36cY1WCr7ChJl9+rJwLAWuMKFCVtA5ymbedxXzFo1VaX3dlV6bY7bfoHwZO/7Z+4dVxNjrxsW69+zkdk2BHjotZPuXuQ4zTqAFBRhjGH095beUdpumQL+I2f75hw127C82luBul0W91tj1m5XfqvvT89Dn+WDcDZTtBVyvwW57ueizhHz7D99Crw+uKfgJihxIl8+2dhJ0hCvhdVvxVn1Hej3ivZb2E8lRmrN75hyaziebt3/APNSX5Bt2/qwbmGAXc45uTpQyZTZX91rDcNhE/vYFAuabD59o3gP0QXcEyrhYhinzYmmSpHM/YZEApk+12dG/hM9o7C9ZsNlgu+t79+HBhKke4G+O+em/N773pH0lyzquG+jX857LsA8oss3zq09tfnBUmuCcPF/10JXxSudhhfDZZ5l9kcMngqwAckEJ1mQZvzjRaDuxIFUWMs+Wau45aSjPJtpAbRuU8i/n1n+ddWaXIVNe5Tdc18SDlgh9EbyuyDm/O1fTFmT5Qiaz1OjE3BO7k8MLL8j46t7X/C9w/iwWNrmj1GGrHWPHdTHdVCff/bCpsBWzzXx6kiL/zsLdLOlC+Sj1qdptx/iBY5zwihN0WFcyLplRtfCtkH/yIN6nswJLAL5+c1jvtiUp7h42hi9iHece57JpnZv4I/ZRLnXXXbx31CxtwCmXj77efKrXjpPSwGFjtqY7yc7jvjRK+YSvFp9kC1PiZ/FOF3KF9dTNYavbTsbZkdeB88YwWT+457NcaOGL4xuXdipTDrSldOzj2JGS9Xw5W17/enNYrH0x6YkAuH7eO/RK6FBUWtN4DkpFd6OvnDQWjrJ++zJvk8aOIQF2LncE8d4o1jqGJMX750X7wqjHjpvT2WYF1tdpzVLH1a+ZXTl9Z3o8O7vID0/hsf71pZvD/Xr32MDoEqk5RM1uIUni66olTO8pChdu9NE+wh0mWhTqJ/zIV5awP1Xru51t7g5+8GwAn905kqR2tzitc8xcsmBdqxxfKS77blFjcjtkNpMFk9y8P6y3uqfXBvZI02Q7snty8UUwv2R2Wg0k16b76BD4G8p7bvTl9G01A1uyzmSPlt4fVpsvLq9Vk4VaYdz88NAAPkX87KTVYBu8aKPmtB98gkveaH61q/mXDLO4eJTJHN1s7Fzqhpk0aUue4iF+YhHAk6e71dETM1MXpH3qucbmwpLPFjWoUQB9faP5nUKNO77oP2P4dJcuLiaPa/UGf8abJj/sI6Isg26WRIS8Z6UPYc9nt9KHLyKmYtBd0AENgGNWMc86tXplyn3zdu2wrLk37zXLgoq8kMnd7FwDOt1eH8Mnn5hnx916wyafaL/0iWgzFHnDTo0bR1sGyxwd/lAx6qreoyffUMdUzk679art2ltjm6t/HbytUOivhcJoxoHJf3lrff/SoHu7ruiejpjUT09qxYb10L3yZ9plGae5OJpxFlOFp/nq90F2A0+yQrAv7N5TBH7XU+fY7xZ0Zhxnadg4swv5zFHju8H9otKWEaXTfESPWgRdqGScS6E8ZJy5pWz206WJy4U87Ka6i5sUfqWpfyZZOGfGKS7nB5ZjZxcKmZtdg9ZMCF+BGlQg9Mf0iE6Z3RiPQJUwUOPMpTP5YoSzY/m8vfO7e6e3iizZd7X+NnwIPJiGrfYQ+3X1kTmmJ6oSIurFE7c4lueXsuk9XXXZzespn3qYoiy6qx+ZEfLu/avlo+yna0PnkTcieBfkMYa9X17qe3yXkawtZPM7us7nK6qxww4g/W5QH11HcFOCusmrhNml7M0lnyxC4E9+30Nc7yJbjSL9tcC2ZS7mc9WIzrOQMXPxWwfSn2sPQx/VoUrAZL9cXt/j1TLA7449BOSRSZ5h9FYqBaPQkxx3DSahyOPNNCQZ10PIOJdCflmQU7mNGRf+sTteQFv8YKEv4qml1FHRZY/ozUdVEHgJ5psEH43I6wvC0vqe6rLP2NqjTZKuZKwSEP5Eyy+uL51A5GnkUtE1jx1ewCoBQ682lpfWb77j/oIIO3TxOx4UHVSyRX02GhWW0p9gbhulyOtF4ZfOSydWk2WcXe3okGVOYI8+rqnTLbqmyKv21wb7GwD99RSftfmwsplxZoQGd1BE//6I/78ZhiQLeyz0zU0OH9XPH32WdyULM4y56MKru39EomSy2VA141pe3fndRHcXzEsi0QFF1OYfFHlB+DEIH1Uf4pnWD6jLQXj94uc/8Kh0PWCb6OafFXlB+N6H/z79Z4k/rGRht+eaH39CVTYszR2kIkXB+zErj1g4LQS/R/UT60+zPArvnBb3mpt/SD0cKlSoUKFChQoVKlSoUKFChQoVKlSoUKFChQoVKlSoUKFChQoVKlSoUKFChQoVKlSoX6j/A3WU/AczzOiKAAAAAElFTkSuQmCC")),
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  hintText: "Email...", suffixIcon: Icon(Icons.email)),
            ),
            TextField(
              obscureText: true,
              controller: password,
              decoration: InputDecoration(
                  hintText: "Password...", suffixIcon: Icon(Icons.key)),
            ),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  autenticacion().IniciarSesion(
                      email: email.text, password: password.text);
                },
                icon: Icon(Icons.login_outlined),
                label: Text("Iniciar Sesión")),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  autenticacion()
                      .CrearUsuario(email: email.text, password: password.text);
                },
                icon: Icon(Icons.person_add),
                label: Text("Registrarse")),
            Divider(),
            Divider(),
            Row(
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      email.text = "user_1@gmail.com";
                      password.text = "123456";
                      autenticacion().IniciarSesion(
                          email: email.text, password: password.text);
                    },
                    icon: Icon(Icons.person_add_alt_1_outlined),
                    label: Text("User 1")),
                VerticalDivider(),
                VerticalDivider(),
                VerticalDivider(),
                ElevatedButton.icon(
                    onPressed: () {
                       email.text = "user_2@gmail.com";
                      password.text = "123456";
                      autenticacion().IniciarSesion(
                          email: email.text, password: password.text);
                    },
                    icon: Icon(Icons.person_add_alt_1_rounded),
                    label: Text("User 2")),
                VerticalDivider(),
                VerticalDivider(),
                VerticalDivider(),
                ElevatedButton.icon(
                    onPressed: () {
                       email.text = "user_3@gmail.com";
                      password.text = "123456";
                      autenticacion().IniciarSesion(
                          email: email.text, password: password.text);
                    },
                    icon: Icon(Icons.person_add_alt_outlined),
                    label: Text("User 3")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
