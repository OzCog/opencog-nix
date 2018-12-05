{ pkgs }: with pkgs;

stdenv.mkDerivation rec {
  name = "cogutil";

  src = fetchFromGitHub {
    owner = "opencog";
    repo = "cogutil";
    rev = "e3eca79143975cd930f3ba58a89ba143189205e9";
    sha256 = "0l1j2g9flrqczc4nr3i2nyzy7p1qy0mmcjaxm6wxnsn8gvs9lqgy";
  };

  nativeBuildInputs = [ cmake boost166 ];

  # doCheck = true;
  # checkTarget = "test";

  meta = with stdenv.lib; {
    description = "Very low-level C++ programming utilities used by several components";
    homepage = http://opencog.org;
    license = licenses.agpl3;
#    maintainers = with maintainers; [ radivarig ];
    platforms = with platforms; unix;
  };
}