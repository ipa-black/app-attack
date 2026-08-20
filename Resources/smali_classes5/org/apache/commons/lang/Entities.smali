.class Lorg/apache/commons/lang/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/Entities$BinaryEntityMap;,
        Lorg/apache/commons/lang/Entities$ArrayEntityMap;,
        Lorg/apache/commons/lang/Entities$LookupEntityMap;,
        Lorg/apache/commons/lang/Entities$TreeEntityMap;,
        Lorg/apache/commons/lang/Entities$HashEntityMap;,
        Lorg/apache/commons/lang/Entities$MapIntMap;,
        Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;,
        Lorg/apache/commons/lang/Entities$EntityMap;
    }
.end annotation


# static fields
.field private static final APOS_ARRAY:[[Ljava/lang/String;

.field private static final BASIC_ARRAY:[[Ljava/lang/String;

.field public static final HTML32:Lorg/apache/commons/lang/Entities;

.field public static final HTML40:Lorg/apache/commons/lang/Entities;

.field static final HTML40_ARRAY:[[Ljava/lang/String;

.field static final ISO8859_1_ARRAY:[[Ljava/lang/String;

.field public static final XML:Lorg/apache/commons/lang/Entities;


# instance fields
.field map:Lorg/apache/commons/lang/Entities$EntityMap;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const/4 v0, 0x4

    .line 76
    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "quot"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "34"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "amp"

    aput-object v4, v3, v5

    const-string v4, "38"

    aput-object v4, v3, v6

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "lt"

    aput-object v4, v3, v5

    const-string v4, "60"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "gt"

    aput-object v4, v3, v5

    const-string v4, "62"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    aput-object v3, v1, v4

    sput-object v1, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    .line 83
    new-array v3, v6, [[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "apos"

    aput-object v8, v7, v5

    const-string v8, "39"

    aput-object v8, v7, v6

    aput-object v7, v3, v5

    sput-object v3, Lorg/apache/commons/lang/Entities;->APOS_ARRAY:[[Ljava/lang/String;

    const/16 v7, 0x60

    .line 88
    new-array v8, v7, [[Ljava/lang/String;

    new-array v9, v2, [Ljava/lang/String;

    const-string v10, "nbsp"

    aput-object v10, v9, v5

    const-string v10, "160"

    aput-object v10, v9, v6

    aput-object v9, v8, v5

    new-array v9, v2, [Ljava/lang/String;

    const-string v10, "iexcl"

    aput-object v10, v9, v5

    const-string v10, "161"

    aput-object v10, v9, v6

    aput-object v9, v8, v6

    new-array v9, v2, [Ljava/lang/String;

    const-string v10, "cent"

    aput-object v10, v9, v5

    const-string v10, "162"

    aput-object v10, v9, v6

    aput-object v9, v8, v2

    new-array v9, v2, [Ljava/lang/String;

    const-string v10, "pound"

    aput-object v10, v9, v5

    const-string v10, "163"

    aput-object v10, v9, v6

    aput-object v9, v8, v4

    new-array v9, v2, [Ljava/lang/String;

    const-string v10, "curren"

    aput-object v10, v9, v5

    const-string v10, "164"

    aput-object v10, v9, v6

    aput-object v9, v8, v0

    new-array v9, v2, [Ljava/lang/String;

    const-string v10, "yen"

    aput-object v10, v9, v5

    const-string v10, "165"

    aput-object v10, v9, v6

    const/4 v10, 0x5

    aput-object v9, v8, v10

    new-array v9, v2, [Ljava/lang/String;

    const-string v11, "brvbar"

    aput-object v11, v9, v5

    const-string v11, "166"

    aput-object v11, v9, v6

    const/4 v11, 0x6

    aput-object v9, v8, v11

    new-array v9, v2, [Ljava/lang/String;

    const-string v12, "sect"

    aput-object v12, v9, v5

    const-string v12, "167"

    aput-object v12, v9, v6

    const/4 v12, 0x7

    aput-object v9, v8, v12

    new-array v9, v2, [Ljava/lang/String;

    const-string v13, "uml"

    aput-object v13, v9, v5

    const-string v13, "168"

    aput-object v13, v9, v6

    const/16 v13, 0x8

    aput-object v9, v8, v13

    new-array v9, v2, [Ljava/lang/String;

    const-string v14, "copy"

    aput-object v14, v9, v5

    const-string v14, "169"

    aput-object v14, v9, v6

    const/16 v14, 0x9

    aput-object v9, v8, v14

    new-array v9, v2, [Ljava/lang/String;

    const-string v15, "ordf"

    aput-object v15, v9, v5

    const-string v15, "170"

    aput-object v15, v9, v6

    const/16 v15, 0xa

    aput-object v9, v8, v15

    new-array v9, v2, [Ljava/lang/String;

    const-string v16, "laquo"

    aput-object v16, v9, v5

    const-string v16, "171"

    aput-object v16, v9, v6

    const/16 v16, 0xb

    aput-object v9, v8, v16

    new-array v9, v2, [Ljava/lang/String;

    const-string v17, "not"

    aput-object v17, v9, v5

    const-string v17, "172"

    aput-object v17, v9, v6

    const/16 v17, 0xc

    aput-object v9, v8, v17

    new-array v9, v2, [Ljava/lang/String;

    const-string v18, "shy"

    aput-object v18, v9, v5

    const-string v18, "173"

    aput-object v18, v9, v6

    const/16 v18, 0xd

    aput-object v9, v8, v18

    new-array v9, v2, [Ljava/lang/String;

    const-string v19, "reg"

    aput-object v19, v9, v5

    const-string v19, "174"

    aput-object v19, v9, v6

    const/16 v19, 0xe

    aput-object v9, v8, v19

    new-array v9, v2, [Ljava/lang/String;

    const-string v20, "macr"

    aput-object v20, v9, v5

    const-string v20, "175"

    aput-object v20, v9, v6

    const/16 v20, 0xf

    aput-object v9, v8, v20

    new-array v9, v2, [Ljava/lang/String;

    const-string v21, "deg"

    aput-object v21, v9, v5

    const-string v21, "176"

    aput-object v21, v9, v6

    const/16 v21, 0x10

    aput-object v9, v8, v21

    new-array v9, v2, [Ljava/lang/String;

    const-string v22, "plusmn"

    aput-object v22, v9, v5

    const-string v22, "177"

    aput-object v22, v9, v6

    const/16 v22, 0x11

    aput-object v9, v8, v22

    new-array v9, v2, [Ljava/lang/String;

    const-string v23, "sup2"

    aput-object v23, v9, v5

    const-string v23, "178"

    aput-object v23, v9, v6

    const/16 v23, 0x12

    aput-object v9, v8, v23

    new-array v9, v2, [Ljava/lang/String;

    const-string v24, "sup3"

    aput-object v24, v9, v5

    const-string v24, "179"

    aput-object v24, v9, v6

    const/16 v24, 0x13

    aput-object v9, v8, v24

    new-array v9, v2, [Ljava/lang/String;

    const-string v25, "acute"

    aput-object v25, v9, v5

    const-string v25, "180"

    aput-object v25, v9, v6

    const/16 v25, 0x14

    aput-object v9, v8, v25

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "micro"

    aput-object v26, v9, v5

    const-string v26, "181"

    aput-object v26, v9, v6

    const/16 v26, 0x15

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "para"

    aput-object v26, v9, v5

    const-string v26, "182"

    aput-object v26, v9, v6

    const/16 v26, 0x16

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "middot"

    aput-object v26, v9, v5

    const-string v26, "183"

    aput-object v26, v9, v6

    const/16 v26, 0x17

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "cedil"

    aput-object v26, v9, v5

    const-string v26, "184"

    aput-object v26, v9, v6

    const/16 v26, 0x18

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "sup1"

    aput-object v26, v9, v5

    const-string v26, "185"

    aput-object v26, v9, v6

    const/16 v26, 0x19

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "ordm"

    aput-object v26, v9, v5

    const-string v26, "186"

    aput-object v26, v9, v6

    const/16 v26, 0x1a

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "raquo"

    aput-object v26, v9, v5

    const-string v26, "187"

    aput-object v26, v9, v6

    const/16 v26, 0x1b

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "frac14"

    aput-object v26, v9, v5

    const-string v26, "188"

    aput-object v26, v9, v6

    const/16 v26, 0x1c

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "frac12"

    aput-object v26, v9, v5

    const-string v26, "189"

    aput-object v26, v9, v6

    const/16 v26, 0x1d

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "frac34"

    aput-object v26, v9, v5

    const-string v26, "190"

    aput-object v26, v9, v6

    const/16 v26, 0x1e

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "iquest"

    aput-object v26, v9, v5

    const-string v26, "191"

    aput-object v26, v9, v6

    const/16 v26, 0x1f

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Agrave"

    aput-object v26, v9, v5

    const-string v26, "192"

    aput-object v26, v9, v6

    const/16 v26, 0x20

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Aacute"

    aput-object v26, v9, v5

    const-string v26, "193"

    aput-object v26, v9, v6

    const/16 v26, 0x21

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Acirc"

    aput-object v26, v9, v5

    const-string v26, "194"

    aput-object v26, v9, v6

    const/16 v26, 0x22

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Atilde"

    aput-object v26, v9, v5

    const-string v26, "195"

    aput-object v26, v9, v6

    const/16 v26, 0x23

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Auml"

    aput-object v26, v9, v5

    const-string v26, "196"

    aput-object v26, v9, v6

    const/16 v26, 0x24

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Aring"

    aput-object v26, v9, v5

    const-string v26, "197"

    aput-object v26, v9, v6

    const/16 v26, 0x25

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "AElig"

    aput-object v26, v9, v5

    const-string v26, "198"

    aput-object v26, v9, v6

    const/16 v26, 0x26

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Ccedil"

    aput-object v26, v9, v5

    const-string v26, "199"

    aput-object v26, v9, v6

    const/16 v26, 0x27

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Egrave"

    aput-object v26, v9, v5

    const-string v26, "200"

    aput-object v26, v9, v6

    const/16 v26, 0x28

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Eacute"

    aput-object v26, v9, v5

    const-string v26, "201"

    aput-object v26, v9, v6

    const/16 v26, 0x29

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Ecirc"

    aput-object v26, v9, v5

    const-string v26, "202"

    aput-object v26, v9, v6

    const/16 v26, 0x2a

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Euml"

    aput-object v26, v9, v5

    const-string v26, "203"

    aput-object v26, v9, v6

    const/16 v26, 0x2b

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Igrave"

    aput-object v26, v9, v5

    const-string v26, "204"

    aput-object v26, v9, v6

    const/16 v26, 0x2c

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Iacute"

    aput-object v26, v9, v5

    const-string v26, "205"

    aput-object v26, v9, v6

    const/16 v26, 0x2d

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Icirc"

    aput-object v26, v9, v5

    const-string v26, "206"

    aput-object v26, v9, v6

    const/16 v26, 0x2e

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Iuml"

    aput-object v26, v9, v5

    const-string v26, "207"

    aput-object v26, v9, v6

    const/16 v26, 0x2f

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "ETH"

    aput-object v26, v9, v5

    const-string v26, "208"

    aput-object v26, v9, v6

    const/16 v26, 0x30

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Ntilde"

    aput-object v26, v9, v5

    const-string v26, "209"

    aput-object v26, v9, v6

    const/16 v26, 0x31

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Ograve"

    aput-object v26, v9, v5

    const-string v26, "210"

    aput-object v26, v9, v6

    const/16 v26, 0x32

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Oacute"

    aput-object v26, v9, v5

    const-string v26, "211"

    aput-object v26, v9, v6

    const/16 v26, 0x33

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Ocirc"

    aput-object v26, v9, v5

    const-string v26, "212"

    aput-object v26, v9, v6

    const/16 v26, 0x34

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Otilde"

    aput-object v26, v9, v5

    const-string v26, "213"

    aput-object v26, v9, v6

    const/16 v26, 0x35

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Ouml"

    aput-object v26, v9, v5

    const-string v26, "214"

    aput-object v26, v9, v6

    const/16 v26, 0x36

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "times"

    aput-object v26, v9, v5

    const-string v26, "215"

    aput-object v26, v9, v6

    const/16 v26, 0x37

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Oslash"

    aput-object v26, v9, v5

    const-string v26, "216"

    aput-object v26, v9, v6

    const/16 v26, 0x38

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Ugrave"

    aput-object v26, v9, v5

    const-string v26, "217"

    aput-object v26, v9, v6

    const/16 v26, 0x39

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Uacute"

    aput-object v26, v9, v5

    const-string v26, "218"

    aput-object v26, v9, v6

    const/16 v26, 0x3a

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Ucirc"

    aput-object v26, v9, v5

    const-string v26, "219"

    aput-object v26, v9, v6

    const/16 v26, 0x3b

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Uuml"

    aput-object v26, v9, v5

    const-string v26, "220"

    aput-object v26, v9, v6

    const/16 v26, 0x3c

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "Yacute"

    aput-object v26, v9, v5

    const-string v26, "221"

    aput-object v26, v9, v6

    const/16 v26, 0x3d

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "THORN"

    aput-object v26, v9, v5

    const-string v26, "222"

    aput-object v26, v9, v6

    const/16 v26, 0x3e

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "szlig"

    aput-object v26, v9, v5

    const-string v26, "223"

    aput-object v26, v9, v6

    const/16 v26, 0x3f

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "agrave"

    aput-object v26, v9, v5

    const-string v26, "224"

    aput-object v26, v9, v6

    const/16 v26, 0x40

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "aacute"

    aput-object v26, v9, v5

    const-string v26, "225"

    aput-object v26, v9, v6

    const/16 v26, 0x41

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "acirc"

    aput-object v26, v9, v5

    const-string v26, "226"

    aput-object v26, v9, v6

    const/16 v26, 0x42

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "atilde"

    aput-object v26, v9, v5

    const-string v26, "227"

    aput-object v26, v9, v6

    const/16 v26, 0x43

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "auml"

    aput-object v26, v9, v5

    const-string v26, "228"

    aput-object v26, v9, v6

    const/16 v26, 0x44

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "aring"

    aput-object v26, v9, v5

    const-string v26, "229"

    aput-object v26, v9, v6

    const/16 v26, 0x45

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "aelig"

    aput-object v26, v9, v5

    const-string v26, "230"

    aput-object v26, v9, v6

    const/16 v26, 0x46

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "ccedil"

    aput-object v26, v9, v5

    const-string v26, "231"

    aput-object v26, v9, v6

    const/16 v26, 0x47

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "egrave"

    aput-object v26, v9, v5

    const-string v26, "232"

    aput-object v26, v9, v6

    const/16 v26, 0x48

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "eacute"

    aput-object v26, v9, v5

    const-string v26, "233"

    aput-object v26, v9, v6

    const/16 v26, 0x49

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "ecirc"

    aput-object v26, v9, v5

    const-string v26, "234"

    aput-object v26, v9, v6

    const/16 v26, 0x4a

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "euml"

    aput-object v26, v9, v5

    const-string v26, "235"

    aput-object v26, v9, v6

    const/16 v26, 0x4b

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "igrave"

    aput-object v26, v9, v5

    const-string v26, "236"

    aput-object v26, v9, v6

    const/16 v26, 0x4c

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "iacute"

    aput-object v26, v9, v5

    const-string v26, "237"

    aput-object v26, v9, v6

    const/16 v26, 0x4d

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "icirc"

    aput-object v26, v9, v5

    const-string v26, "238"

    aput-object v26, v9, v6

    const/16 v26, 0x4e

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "iuml"

    aput-object v26, v9, v5

    const-string v26, "239"

    aput-object v26, v9, v6

    const/16 v26, 0x4f

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "eth"

    aput-object v26, v9, v5

    const-string v26, "240"

    aput-object v26, v9, v6

    const/16 v26, 0x50

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "ntilde"

    aput-object v26, v9, v5

    const-string v26, "241"

    aput-object v26, v9, v6

    const/16 v26, 0x51

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "ograve"

    aput-object v26, v9, v5

    const-string v26, "242"

    aput-object v26, v9, v6

    const/16 v26, 0x52

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "oacute"

    aput-object v26, v9, v5

    const-string v26, "243"

    aput-object v26, v9, v6

    const/16 v26, 0x53

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "ocirc"

    aput-object v26, v9, v5

    const-string v26, "244"

    aput-object v26, v9, v6

    const/16 v26, 0x54

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "otilde"

    aput-object v26, v9, v5

    const-string v26, "245"

    aput-object v26, v9, v6

    const/16 v26, 0x55

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "ouml"

    aput-object v26, v9, v5

    const-string v26, "246"

    aput-object v26, v9, v6

    const/16 v26, 0x56

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "divide"

    aput-object v26, v9, v5

    const-string v26, "247"

    aput-object v26, v9, v6

    const/16 v26, 0x57

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "oslash"

    aput-object v26, v9, v5

    const-string v26, "248"

    aput-object v26, v9, v6

    const/16 v26, 0x58

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "ugrave"

    aput-object v26, v9, v5

    const-string v26, "249"

    aput-object v26, v9, v6

    const/16 v26, 0x59

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "uacute"

    aput-object v26, v9, v5

    const-string v26, "250"

    aput-object v26, v9, v6

    const/16 v26, 0x5a

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "ucirc"

    aput-object v26, v9, v5

    const-string v26, "251"

    aput-object v26, v9, v6

    const/16 v26, 0x5b

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "uuml"

    aput-object v26, v9, v5

    const-string v26, "252"

    aput-object v26, v9, v6

    const/16 v26, 0x5c

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "yacute"

    aput-object v26, v9, v5

    const-string v26, "253"

    aput-object v26, v9, v6

    const/16 v26, 0x5d

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "thorn"

    aput-object v26, v9, v5

    const-string v26, "254"

    aput-object v26, v9, v6

    const/16 v26, 0x5e

    aput-object v9, v8, v26

    new-array v9, v2, [Ljava/lang/String;

    const-string v26, "yuml"

    aput-object v26, v9, v5

    const-string v26, "255"

    aput-object v26, v9, v6

    const/16 v26, 0x5f

    aput-object v9, v8, v26

    sput-object v8, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    const/16 v9, 0x97

    .line 189
    new-array v9, v9, [[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    const-string v27, "fnof"

    aput-object v27, v7, v5

    const-string v27, "402"

    aput-object v27, v7, v6

    aput-object v7, v9, v5

    new-array v7, v2, [Ljava/lang/String;

    const-string v27, "Alpha"

    aput-object v27, v7, v5

    const-string v27, "913"

    aput-object v27, v7, v6

    aput-object v7, v9, v6

    new-array v7, v2, [Ljava/lang/String;

    const-string v27, "Beta"

    aput-object v27, v7, v5

    const-string v27, "914"

    aput-object v27, v7, v6

    aput-object v7, v9, v2

    new-array v7, v2, [Ljava/lang/String;

    const-string v27, "Gamma"

    aput-object v27, v7, v5

    const-string v27, "915"

    aput-object v27, v7, v6

    aput-object v7, v9, v4

    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "Delta"

    aput-object v7, v4, v5

    const-string v7, "916"

    aput-object v7, v4, v6

    aput-object v4, v9, v0

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Epsilon"

    aput-object v4, v0, v5

    const-string v4, "917"

    aput-object v4, v0, v6

    aput-object v0, v9, v10

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Zeta"

    aput-object v4, v0, v5

    const-string v4, "918"

    aput-object v4, v0, v6

    aput-object v0, v9, v11

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Eta"

    aput-object v4, v0, v5

    const-string v4, "919"

    aput-object v4, v0, v6

    aput-object v0, v9, v12

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Theta"

    aput-object v4, v0, v5

    const-string v4, "920"

    aput-object v4, v0, v6

    aput-object v0, v9, v13

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Iota"

    aput-object v4, v0, v5

    const-string v4, "921"

    aput-object v4, v0, v6

    aput-object v0, v9, v14

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Kappa"

    aput-object v4, v0, v5

    const-string v4, "922"

    aput-object v4, v0, v6

    aput-object v0, v9, v15

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Lambda"

    aput-object v4, v0, v5

    const-string v4, "923"

    aput-object v4, v0, v6

    aput-object v0, v9, v16

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Mu"

    aput-object v4, v0, v5

    const-string v4, "924"

    aput-object v4, v0, v6

    aput-object v0, v9, v17

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Nu"

    aput-object v4, v0, v5

    const-string v4, "925"

    aput-object v4, v0, v6

    aput-object v0, v9, v18

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Xi"

    aput-object v4, v0, v5

    const-string v4, "926"

    aput-object v4, v0, v6

    aput-object v0, v9, v19

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Omicron"

    aput-object v4, v0, v5

    const-string v4, "927"

    aput-object v4, v0, v6

    aput-object v0, v9, v20

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Pi"

    aput-object v4, v0, v5

    const-string v4, "928"

    aput-object v4, v0, v6

    aput-object v0, v9, v21

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Rho"

    aput-object v4, v0, v5

    const-string v4, "929"

    aput-object v4, v0, v6

    aput-object v0, v9, v22

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Sigma"

    aput-object v4, v0, v5

    const-string v4, "931"

    aput-object v4, v0, v6

    aput-object v0, v9, v23

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Tau"

    aput-object v4, v0, v5

    const-string v4, "932"

    aput-object v4, v0, v6

    aput-object v0, v9, v24

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Upsilon"

    aput-object v4, v0, v5

    const-string v4, "933"

    aput-object v4, v0, v6

    aput-object v0, v9, v25

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Phi"

    aput-object v4, v0, v5

    const-string v4, "934"

    aput-object v4, v0, v6

    const/16 v4, 0x15

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Chi"

    aput-object v4, v0, v5

    const-string v4, "935"

    aput-object v4, v0, v6

    const/16 v4, 0x16

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Psi"

    aput-object v4, v0, v5

    const-string v4, "936"

    aput-object v4, v0, v6

    const/16 v4, 0x17

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Omega"

    aput-object v4, v0, v5

    const-string v4, "937"

    aput-object v4, v0, v6

    const/16 v4, 0x18

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "alpha"

    aput-object v4, v0, v5

    const-string v4, "945"

    aput-object v4, v0, v6

    const/16 v4, 0x19

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "beta"

    aput-object v4, v0, v5

    const-string v4, "946"

    aput-object v4, v0, v6

    const/16 v4, 0x1a

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "gamma"

    aput-object v4, v0, v5

    const-string v4, "947"

    aput-object v4, v0, v6

    const/16 v4, 0x1b

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "delta"

    aput-object v4, v0, v5

    const-string v4, "948"

    aput-object v4, v0, v6

    const/16 v4, 0x1c

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "epsilon"

    aput-object v4, v0, v5

    const-string v4, "949"

    aput-object v4, v0, v6

    const/16 v4, 0x1d

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "zeta"

    aput-object v4, v0, v5

    const-string v4, "950"

    aput-object v4, v0, v6

    const/16 v4, 0x1e

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "eta"

    aput-object v4, v0, v5

    const-string v4, "951"

    aput-object v4, v0, v6

    const/16 v4, 0x1f

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "theta"

    aput-object v4, v0, v5

    const-string v4, "952"

    aput-object v4, v0, v6

    const/16 v4, 0x20

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "iota"

    aput-object v4, v0, v5

    const-string v4, "953"

    aput-object v4, v0, v6

    const/16 v4, 0x21

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "kappa"

    aput-object v4, v0, v5

    const-string v4, "954"

    aput-object v4, v0, v6

    const/16 v4, 0x22

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "lambda"

    aput-object v4, v0, v5

    const-string v4, "955"

    aput-object v4, v0, v6

    const/16 v4, 0x23

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "mu"

    aput-object v4, v0, v5

    const-string v4, "956"

    aput-object v4, v0, v6

    const/16 v4, 0x24

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "nu"

    aput-object v4, v0, v5

    const-string v4, "957"

    aput-object v4, v0, v6

    const/16 v4, 0x25

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "xi"

    aput-object v4, v0, v5

    const-string v4, "958"

    aput-object v4, v0, v6

    const/16 v4, 0x26

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "omicron"

    aput-object v4, v0, v5

    const-string v4, "959"

    aput-object v4, v0, v6

    const/16 v4, 0x27

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "pi"

    aput-object v4, v0, v5

    const-string v4, "960"

    aput-object v4, v0, v6

    const/16 v4, 0x28

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rho"

    aput-object v4, v0, v5

    const-string v4, "961"

    aput-object v4, v0, v6

    const/16 v4, 0x29

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "sigmaf"

    aput-object v4, v0, v5

    const-string v4, "962"

    aput-object v4, v0, v6

    const/16 v4, 0x2a

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "sigma"

    aput-object v4, v0, v5

    const-string v4, "963"

    aput-object v4, v0, v6

    const/16 v4, 0x2b

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "tau"

    aput-object v4, v0, v5

    const-string v4, "964"

    aput-object v4, v0, v6

    const/16 v4, 0x2c

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "upsilon"

    aput-object v4, v0, v5

    const-string v4, "965"

    aput-object v4, v0, v6

    const/16 v4, 0x2d

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "phi"

    aput-object v4, v0, v5

    const-string v4, "966"

    aput-object v4, v0, v6

    const/16 v4, 0x2e

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "chi"

    aput-object v4, v0, v5

    const-string v4, "967"

    aput-object v4, v0, v6

    const/16 v4, 0x2f

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "psi"

    aput-object v4, v0, v5

    const-string v4, "968"

    aput-object v4, v0, v6

    const/16 v4, 0x30

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "omega"

    aput-object v4, v0, v5

    const-string v4, "969"

    aput-object v4, v0, v6

    const/16 v4, 0x31

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "thetasym"

    aput-object v4, v0, v5

    const-string v4, "977"

    aput-object v4, v0, v6

    const/16 v4, 0x32

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "upsih"

    aput-object v4, v0, v5

    const-string v4, "978"

    aput-object v4, v0, v6

    const/16 v4, 0x33

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "piv"

    aput-object v4, v0, v5

    const-string v4, "982"

    aput-object v4, v0, v6

    const/16 v4, 0x34

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "bull"

    aput-object v4, v0, v5

    const-string v4, "8226"

    aput-object v4, v0, v6

    const/16 v4, 0x35

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "hellip"

    aput-object v4, v0, v5

    const-string v4, "8230"

    aput-object v4, v0, v6

    const/16 v4, 0x36

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "prime"

    aput-object v4, v0, v5

    const-string v4, "8242"

    aput-object v4, v0, v6

    const/16 v4, 0x37

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Prime"

    aput-object v4, v0, v5

    const-string v4, "8243"

    aput-object v4, v0, v6

    const/16 v4, 0x38

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "oline"

    aput-object v4, v0, v5

    const-string v4, "8254"

    aput-object v4, v0, v6

    const/16 v4, 0x39

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "frasl"

    aput-object v4, v0, v5

    const-string v4, "8260"

    aput-object v4, v0, v6

    const/16 v4, 0x3a

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "weierp"

    aput-object v4, v0, v5

    const-string v4, "8472"

    aput-object v4, v0, v6

    const/16 v4, 0x3b

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "image"

    aput-object v4, v0, v5

    const-string v4, "8465"

    aput-object v4, v0, v6

    const/16 v4, 0x3c

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "real"

    aput-object v4, v0, v5

    const-string v4, "8476"

    aput-object v4, v0, v6

    const/16 v4, 0x3d

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "trade"

    aput-object v4, v0, v5

    const-string v4, "8482"

    aput-object v4, v0, v6

    const/16 v4, 0x3e

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "alefsym"

    aput-object v4, v0, v5

    const-string v4, "8501"

    aput-object v4, v0, v6

    const/16 v4, 0x3f

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "larr"

    aput-object v4, v0, v5

    const-string v4, "8592"

    aput-object v4, v0, v6

    const/16 v4, 0x40

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "uarr"

    aput-object v4, v0, v5

    const-string v4, "8593"

    aput-object v4, v0, v6

    const/16 v4, 0x41

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rarr"

    aput-object v4, v0, v5

    const-string v4, "8594"

    aput-object v4, v0, v6

    const/16 v4, 0x42

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "darr"

    aput-object v4, v0, v5

    const-string v4, "8595"

    aput-object v4, v0, v6

    const/16 v4, 0x43

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "harr"

    aput-object v4, v0, v5

    const-string v4, "8596"

    aput-object v4, v0, v6

    const/16 v4, 0x44

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "crarr"

    aput-object v4, v0, v5

    const-string v4, "8629"

    aput-object v4, v0, v6

    const/16 v4, 0x45

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "lArr"

    aput-object v4, v0, v5

    const-string v4, "8656"

    aput-object v4, v0, v6

    const/16 v4, 0x46

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "uArr"

    aput-object v4, v0, v5

    const-string v4, "8657"

    aput-object v4, v0, v6

    const/16 v4, 0x47

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rArr"

    aput-object v4, v0, v5

    const-string v4, "8658"

    aput-object v4, v0, v6

    const/16 v4, 0x48

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "dArr"

    aput-object v4, v0, v5

    const-string v4, "8659"

    aput-object v4, v0, v6

    const/16 v4, 0x49

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "hArr"

    aput-object v4, v0, v5

    const-string v4, "8660"

    aput-object v4, v0, v6

    const/16 v4, 0x4a

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "forall"

    aput-object v4, v0, v5

    const-string v4, "8704"

    aput-object v4, v0, v6

    const/16 v4, 0x4b

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "part"

    aput-object v4, v0, v5

    const-string v4, "8706"

    aput-object v4, v0, v6

    const/16 v4, 0x4c

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "exist"

    aput-object v4, v0, v5

    const-string v4, "8707"

    aput-object v4, v0, v6

    const/16 v4, 0x4d

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "empty"

    aput-object v4, v0, v5

    const-string v4, "8709"

    aput-object v4, v0, v6

    const/16 v4, 0x4e

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "nabla"

    aput-object v4, v0, v5

    const-string v4, "8711"

    aput-object v4, v0, v6

    const/16 v4, 0x4f

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "isin"

    aput-object v4, v0, v5

    const-string v4, "8712"

    aput-object v4, v0, v6

    const/16 v4, 0x50

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "notin"

    aput-object v4, v0, v5

    const-string v4, "8713"

    aput-object v4, v0, v6

    const/16 v4, 0x51

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "ni"

    aput-object v4, v0, v5

    const-string v4, "8715"

    aput-object v4, v0, v6

    const/16 v4, 0x52

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "prod"

    aput-object v4, v0, v5

    const-string v4, "8719"

    aput-object v4, v0, v6

    const/16 v4, 0x53

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "sum"

    aput-object v4, v0, v5

    const-string v4, "8721"

    aput-object v4, v0, v6

    const/16 v4, 0x54

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "minus"

    aput-object v4, v0, v5

    const-string v4, "8722"

    aput-object v4, v0, v6

    const/16 v4, 0x55

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "lowast"

    aput-object v4, v0, v5

    const-string v4, "8727"

    aput-object v4, v0, v6

    const/16 v4, 0x56

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "radic"

    aput-object v4, v0, v5

    const-string v4, "8730"

    aput-object v4, v0, v6

    const/16 v4, 0x57

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "prop"

    aput-object v4, v0, v5

    const-string v4, "8733"

    aput-object v4, v0, v6

    const/16 v4, 0x58

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "infin"

    aput-object v4, v0, v5

    const-string v4, "8734"

    aput-object v4, v0, v6

    const/16 v4, 0x59

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "ang"

    aput-object v4, v0, v5

    const-string v4, "8736"

    aput-object v4, v0, v6

    const/16 v4, 0x5a

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "and"

    aput-object v4, v0, v5

    const-string v4, "8743"

    aput-object v4, v0, v6

    const/16 v4, 0x5b

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "or"

    aput-object v4, v0, v5

    const-string v4, "8744"

    aput-object v4, v0, v6

    const/16 v4, 0x5c

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "cap"

    aput-object v4, v0, v5

    const-string v4, "8745"

    aput-object v4, v0, v6

    const/16 v4, 0x5d

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "cup"

    aput-object v4, v0, v5

    const-string v4, "8746"

    aput-object v4, v0, v6

    const/16 v4, 0x5e

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "int"

    aput-object v4, v0, v5

    const-string v4, "8747"

    aput-object v4, v0, v6

    const/16 v4, 0x5f

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "there4"

    aput-object v4, v0, v5

    const-string v4, "8756"

    aput-object v4, v0, v6

    const/16 v4, 0x60

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "sim"

    aput-object v4, v0, v5

    const-string v4, "8764"

    aput-object v4, v0, v6

    const/16 v4, 0x61

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "cong"

    aput-object v4, v0, v5

    const-string v4, "8773"

    aput-object v4, v0, v6

    const/16 v4, 0x62

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "asymp"

    aput-object v4, v0, v5

    const-string v4, "8776"

    aput-object v4, v0, v6

    const/16 v4, 0x63

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "ne"

    aput-object v4, v0, v5

    const-string v4, "8800"

    aput-object v4, v0, v6

    const/16 v4, 0x64

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "equiv"

    aput-object v4, v0, v5

    const-string v4, "8801"

    aput-object v4, v0, v6

    const/16 v4, 0x65

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "le"

    aput-object v4, v0, v5

    const-string v4, "8804"

    aput-object v4, v0, v6

    const/16 v4, 0x66

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "ge"

    aput-object v4, v0, v5

    const-string v4, "8805"

    aput-object v4, v0, v6

    const/16 v4, 0x67

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "sub"

    aput-object v4, v0, v5

    const-string v4, "8834"

    aput-object v4, v0, v6

    const/16 v4, 0x68

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "sup"

    aput-object v4, v0, v5

    const-string v4, "8835"

    aput-object v4, v0, v6

    const/16 v4, 0x69

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "sube"

    aput-object v4, v0, v5

    const-string v4, "8838"

    aput-object v4, v0, v6

    const/16 v4, 0x6a

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "supe"

    aput-object v4, v0, v5

    const-string v4, "8839"

    aput-object v4, v0, v6

    const/16 v4, 0x6b

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "oplus"

    aput-object v4, v0, v5

    const-string v4, "8853"

    aput-object v4, v0, v6

    const/16 v4, 0x6c

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "otimes"

    aput-object v4, v0, v5

    const-string v4, "8855"

    aput-object v4, v0, v6

    const/16 v4, 0x6d

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "perp"

    aput-object v4, v0, v5

    const-string v4, "8869"

    aput-object v4, v0, v6

    const/16 v4, 0x6e

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "sdot"

    aput-object v4, v0, v5

    const-string v4, "8901"

    aput-object v4, v0, v6

    const/16 v4, 0x6f

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "lceil"

    aput-object v4, v0, v5

    const-string v4, "8968"

    aput-object v4, v0, v6

    const/16 v4, 0x70

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rceil"

    aput-object v4, v0, v5

    const-string v4, "8969"

    aput-object v4, v0, v6

    const/16 v4, 0x71

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "lfloor"

    aput-object v4, v0, v5

    const-string v4, "8970"

    aput-object v4, v0, v6

    const/16 v4, 0x72

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rfloor"

    aput-object v4, v0, v5

    const-string v4, "8971"

    aput-object v4, v0, v6

    const/16 v4, 0x73

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "lang"

    aput-object v4, v0, v5

    const-string v4, "9001"

    aput-object v4, v0, v6

    const/16 v4, 0x74

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rang"

    aput-object v4, v0, v5

    const-string v4, "9002"

    aput-object v4, v0, v6

    const/16 v4, 0x75

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "loz"

    aput-object v4, v0, v5

    const-string v4, "9674"

    aput-object v4, v0, v6

    const/16 v4, 0x76

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "spades"

    aput-object v4, v0, v5

    const-string v4, "9824"

    aput-object v4, v0, v6

    const/16 v4, 0x77

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "clubs"

    aput-object v4, v0, v5

    const-string v4, "9827"

    aput-object v4, v0, v6

    const/16 v4, 0x78

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "hearts"

    aput-object v4, v0, v5

    const-string v4, "9829"

    aput-object v4, v0, v6

    const/16 v4, 0x79

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "diams"

    aput-object v4, v0, v5

    const-string v4, "9830"

    aput-object v4, v0, v6

    const/16 v4, 0x7a

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "OElig"

    aput-object v4, v0, v5

    const-string v4, "338"

    aput-object v4, v0, v6

    const/16 v4, 0x7b

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "oelig"

    aput-object v4, v0, v5

    const-string v4, "339"

    aput-object v4, v0, v6

    const/16 v4, 0x7c

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Scaron"

    aput-object v4, v0, v5

    const-string v4, "352"

    aput-object v4, v0, v6

    const/16 v4, 0x7d

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "scaron"

    aput-object v4, v0, v5

    const-string v4, "353"

    aput-object v4, v0, v6

    const/16 v4, 0x7e

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Yuml"

    aput-object v4, v0, v5

    const-string v4, "376"

    aput-object v4, v0, v6

    const/16 v4, 0x7f

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "circ"

    aput-object v4, v0, v5

    const-string v4, "710"

    aput-object v4, v0, v6

    const/16 v4, 0x80

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "tilde"

    aput-object v4, v0, v5

    const-string v4, "732"

    aput-object v4, v0, v6

    const/16 v4, 0x81

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "ensp"

    aput-object v4, v0, v5

    const-string v4, "8194"

    aput-object v4, v0, v6

    const/16 v4, 0x82

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "emsp"

    aput-object v4, v0, v5

    const-string v4, "8195"

    aput-object v4, v0, v6

    const/16 v4, 0x83

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "thinsp"

    aput-object v4, v0, v5

    const-string v4, "8201"

    aput-object v4, v0, v6

    const/16 v4, 0x84

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "zwnj"

    aput-object v4, v0, v5

    const-string v4, "8204"

    aput-object v4, v0, v6

    const/16 v4, 0x85

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "zwj"

    aput-object v4, v0, v5

    const-string v4, "8205"

    aput-object v4, v0, v6

    const/16 v4, 0x86

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "lrm"

    aput-object v4, v0, v5

    const-string v4, "8206"

    aput-object v4, v0, v6

    const/16 v4, 0x87

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rlm"

    aput-object v4, v0, v5

    const-string v4, "8207"

    aput-object v4, v0, v6

    const/16 v4, 0x88

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "ndash"

    aput-object v4, v0, v5

    const-string v4, "8211"

    aput-object v4, v0, v6

    const/16 v4, 0x89

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "mdash"

    aput-object v4, v0, v5

    const-string v4, "8212"

    aput-object v4, v0, v6

    const/16 v4, 0x8a

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "lsquo"

    aput-object v4, v0, v5

    const-string v4, "8216"

    aput-object v4, v0, v6

    const/16 v4, 0x8b

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rsquo"

    aput-object v4, v0, v5

    const-string v4, "8217"

    aput-object v4, v0, v6

    const/16 v4, 0x8c

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "sbquo"

    aput-object v4, v0, v5

    const-string v4, "8218"

    aput-object v4, v0, v6

    const/16 v4, 0x8d

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "ldquo"

    aput-object v4, v0, v5

    const-string v4, "8220"

    aput-object v4, v0, v6

    const/16 v4, 0x8e

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rdquo"

    aput-object v4, v0, v5

    const-string v4, "8221"

    aput-object v4, v0, v6

    const/16 v4, 0x8f

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "bdquo"

    aput-object v4, v0, v5

    const-string v4, "8222"

    aput-object v4, v0, v6

    const/16 v4, 0x90

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "dagger"

    aput-object v4, v0, v5

    const-string v4, "8224"

    aput-object v4, v0, v6

    const/16 v4, 0x91

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Dagger"

    aput-object v4, v0, v5

    const-string v4, "8225"

    aput-object v4, v0, v6

    const/16 v4, 0x92

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "permil"

    aput-object v4, v0, v5

    const-string v4, "8240"

    aput-object v4, v0, v6

    const/16 v4, 0x93

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "lsaquo"

    aput-object v4, v0, v5

    const-string v4, "8249"

    aput-object v4, v0, v6

    const/16 v4, 0x94

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rsaquo"

    aput-object v4, v0, v5

    const-string v4, "8250"

    aput-object v4, v0, v6

    const/16 v4, 0x95

    aput-object v0, v9, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "euro"

    aput-object v2, v0, v5

    const-string v2, "8364"

    aput-object v2, v0, v6

    const/16 v2, 0x96

    aput-object v0, v9, v2

    sput-object v9, Lorg/apache/commons/lang/Entities;->HTML40_ARRAY:[[Ljava/lang/String;

    .line 389
    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    .line 390
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, v3}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 395
    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/Entities;->HTML32:Lorg/apache/commons/lang/Entities;

    .line 396
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, v8}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 401
    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    .line 402
    invoke-static {v0}, Lorg/apache/commons/lang/Entities;->fillWithHtml40Entities(Lorg/apache/commons/lang/Entities;)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    new-instance v0, Lorg/apache/commons/lang/Entities$LookupEntityMap;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities$LookupEntityMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    return-void
.end method

.method static fillWithHtml40Entities(Lorg/apache/commons/lang/Entities;)V
    .locals 1

    .line 406
    sget-object v0, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 407
    sget-object v0, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 408
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addEntities([[Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 608
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 609
    aget-object v2, p1, v1

    aget-object v3, v2, v0

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/lang/Entities;->addEntity(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addEntity(Ljava/lang/String;I)V
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang/Entities$EntityMap;->add(Ljava/lang/String;I)V

    return-void
.end method

.method public entityName(I)Ljava/lang/String;
    .locals 1

    .line 618
    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang/Entities$EntityMap;->name(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public entityValue(Ljava/lang/String;)I
    .locals 1

    .line 623
    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang/Entities$EntityMap;->value(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 637
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 639
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 640
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 641
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/Entities;->entityName(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3b

    if-nez v3, :cond_1

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    .line 645
    const-string v3, "&#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 646
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 647
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 649
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v2, 0x26

    .line 652
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 653
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 670
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 672
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 673
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x26

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    add-int/lit8 v6, v2, 0x1

    const/16 v7, 0x3b

    .line 675
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 677
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 680
    :cond_0
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 682
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x23

    if-ne v3, v6, :cond_1

    .line 683
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 685
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/Entities;->entityValue(Ljava/lang/String;)I

    move-result v3

    :goto_1
    if-ne v3, v9, :cond_2

    .line 688
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 689
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    int-to-char v2, v3

    .line 692
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    move v2, v8

    goto :goto_3

    .line 696
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/2addr v2, v5

    goto :goto_0

    .line 699
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
