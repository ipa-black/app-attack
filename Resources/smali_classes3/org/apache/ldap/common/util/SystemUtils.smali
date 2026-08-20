.class public Lorg/apache/ldap/common/util/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field public static final AWT_TOOLKIT:Ljava/lang/String;

.field public static final FILE_ENCODING:Ljava/lang/String;

.field public static final FILE_SEPARATOR:Ljava/lang/String;

.field public static final IS_JAVA_1_1:Z

.field public static final IS_JAVA_1_2:Z

.field public static final IS_JAVA_1_3:Z

.field public static final IS_JAVA_1_4:Z

.field public static final IS_JAVA_1_5:Z

.field public static final IS_OS_AIX:Z

.field public static final IS_OS_HP_UX:Z

.field public static final IS_OS_IRIX:Z

.field public static final IS_OS_LINUX:Z

.field public static final IS_OS_MAC:Z

.field public static final IS_OS_MAC_OSX:Z

.field public static final IS_OS_OS2:Z

.field public static final IS_OS_SOLARIS:Z

.field public static final IS_OS_SUN_OS:Z

.field public static final IS_OS_UNIX:Z

.field public static final IS_OS_WINDOWS:Z

.field public static final IS_OS_WINDOWS_2000:Z

.field public static final IS_OS_WINDOWS_95:Z

.field public static final IS_OS_WINDOWS_98:Z

.field public static final IS_OS_WINDOWS_ME:Z

.field public static final IS_OS_WINDOWS_NT:Z

.field public static final IS_OS_WINDOWS_XP:Z

.field public static final JAVA_AWT_FONTS:Ljava/lang/String;

.field public static final JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

.field public static final JAVA_AWT_HEADLESS:Ljava/lang/String;

.field public static final JAVA_AWT_PRINTERJOB:Ljava/lang/String;

.field public static final JAVA_CLASS_PATH:Ljava/lang/String;

.field public static final JAVA_CLASS_VERSION:Ljava/lang/String;

.field public static final JAVA_COMPILER:Ljava/lang/String;

.field public static final JAVA_ENDORSED_DIRS:Ljava/lang/String;

.field public static final JAVA_EXT_DIRS:Ljava/lang/String;

.field public static final JAVA_HOME:Ljava/lang/String;

.field private static final JAVA_HOME_KEY:Ljava/lang/String; = "java.home"

.field public static final JAVA_IO_TMPDIR:Ljava/lang/String;

.field private static final JAVA_IO_TMPDIR_KEY:Ljava/lang/String; = "java.io.tmpdir"

.field public static final JAVA_LIBRARY_PATH:Ljava/lang/String;

.field public static final JAVA_RUNTIME_NAME:Ljava/lang/String;

.field public static final JAVA_RUNTIME_VERSION:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

.field public static final JAVA_VENDOR:Ljava/lang/String;

.field public static final JAVA_VENDOR_URL:Ljava/lang/String;

.field public static final JAVA_VERSION:Ljava/lang/String;

.field public static final JAVA_VERSION_FLOAT:F

.field public static final JAVA_VERSION_INT:I

.field public static final JAVA_VM_INFO:Ljava/lang/String;

.field public static final JAVA_VM_NAME:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final JAVA_VM_VENDOR:Ljava/lang/String;

.field public static final JAVA_VM_VERSION:Ljava/lang/String;

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final OS_ARCH:Ljava/lang/String;

.field public static final OS_NAME:Ljava/lang/String;

.field private static final OS_NAME_WINDOWS_PREFIX:Ljava/lang/String; = "Windows"

.field public static final OS_VERSION:Ljava/lang/String;

.field public static final PATH_SEPARATOR:Ljava/lang/String;

.field public static final USER_COUNTRY:Ljava/lang/String;

.field public static final USER_DIR:Ljava/lang/String;

.field private static final USER_DIR_KEY:Ljava/lang/String; = "user.dir"

.field public static final USER_HOME:Ljava/lang/String;

.field private static final USER_HOME_KEY:Ljava/lang/String; = "user.home"

.field public static final USER_LANGUAGE:Ljava/lang/String;

.field public static final USER_NAME:Ljava/lang/String;

.field public static final USER_TIMEZONE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 85
    const-string v0, "awt.toolkit"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->AWT_TOOLKIT:Ljava/lang/String;

    .line 103
    const-string v0, "file.encoding"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->FILE_ENCODING:Ljava/lang/String;

    .line 120
    const-string v0, "file.separator"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->FILE_SEPARATOR:Ljava/lang/String;

    .line 136
    const-string v0, "java.awt.fonts"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_AWT_FONTS:Ljava/lang/String;

    .line 152
    const-string v0, "java.awt.graphicsenv"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

    .line 173
    const-string v0, "java.awt.headless"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_AWT_HEADLESS:Ljava/lang/String;

    .line 189
    const-string v0, "java.awt.printerjob"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_AWT_PRINTERJOB:Ljava/lang/String;

    .line 205
    const-string v0, "java.class.path"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_CLASS_PATH:Ljava/lang/String;

    .line 222
    const-string v0, "java.class.version"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_CLASS_VERSION:Ljava/lang/String;

    .line 239
    const-string v0, "java.compiler"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_COMPILER:Ljava/lang/String;

    .line 256
    const-string v0, "java.endorsed.dirs"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_ENDORSED_DIRS:Ljava/lang/String;

    .line 273
    const-string v0, "java.ext.dirs"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_EXT_DIRS:Ljava/lang/String;

    .line 289
    const-string v0, "java.home"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_HOME:Ljava/lang/String;

    .line 305
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_IO_TMPDIR:Ljava/lang/String;

    .line 322
    const-string v0, "java.library.path"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_LIBRARY_PATH:Ljava/lang/String;

    .line 340
    const-string v0, "java.runtime.name"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_RUNTIME_NAME:Ljava/lang/String;

    .line 358
    const-string v0, "java.runtime.version"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_RUNTIME_VERSION:Ljava/lang/String;

    .line 375
    const-string v0, "java.specification.name"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_SPECIFICATION_NAME:Ljava/lang/String;

    .line 392
    const-string v0, "java.specification.vendor"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

    .line 409
    const-string v0, "java.specification.version"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

    .line 426
    const-string v0, "java.util.prefs.PreferencesFactory"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

    .line 442
    const-string v0, "java.vendor"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VENDOR:Ljava/lang/String;

    .line 458
    const-string v0, "java.vendor.url"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VENDOR_URL:Ljava/lang/String;

    .line 474
    const-string v0, "java.version"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    .line 492
    const-string v0, "java.vm.info"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VM_INFO:Ljava/lang/String;

    .line 509
    const-string v0, "java.vm.name"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VM_NAME:Ljava/lang/String;

    .line 526
    const-string v0, "java.vm.specification.name"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

    .line 543
    const-string v0, "java.vm.specification.vendor"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

    .line 560
    const-string v0, "java.vm.specification.version"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

    .line 577
    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VM_VENDOR:Ljava/lang/String;

    .line 594
    const-string v0, "java.vm.version"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VM_VERSION:Ljava/lang/String;

    .line 611
    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 627
    const-string v0, "os.arch"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->OS_ARCH:Ljava/lang/String;

    .line 643
    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->OS_NAME:Ljava/lang/String;

    .line 659
    const-string v0, "os.version"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->OS_VERSION:Ljava/lang/String;

    .line 676
    const-string v0, "path.separator"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->PATH_SEPARATOR:Ljava/lang/String;

    .line 695
    const-string v0, "user.country"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "user.region"

    :cond_0
    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->USER_COUNTRY:Ljava/lang/String;

    .line 714
    const-string v0, "user.dir"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->USER_DIR:Ljava/lang/String;

    .line 730
    const-string v0, "user.home"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->USER_HOME:Ljava/lang/String;

    .line 748
    const-string v0, "user.language"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->USER_LANGUAGE:Ljava/lang/String;

    .line 764
    const-string v0, "user.name"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->USER_NAME:Ljava/lang/String;

    .line 781
    const-string v0, "user.timezone"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/SystemUtils;->USER_TIMEZONE:Ljava/lang/String;

    .line 801
    invoke-static {}, Lorg/apache/ldap/common/util/SystemUtils;->getJavaVersionAsFloat()F

    move-result v0

    sput v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VERSION_FLOAT:F

    .line 816
    invoke-static {}, Lorg/apache/ldap/common/util/SystemUtils;->getJavaVersionAsInt()I

    move-result v0

    sput v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VERSION_INT:I

    .line 829
    const-string v0, "1.1"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/ldap/common/util/SystemUtils;->IS_JAVA_1_1:Z

    .line 837
    const-string v0, "1.2"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/ldap/common/util/SystemUtils;->IS_JAVA_1_2:Z

    .line 845
    const-string v0, "1.3"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/ldap/common/util/SystemUtils;->IS_JAVA_1_3:Z

    .line 853
    const-string v0, "1.4"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/ldap/common/util/SystemUtils;->IS_JAVA_1_4:Z

    .line 861
    const-string v0, "1.5"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/ldap/common/util/SystemUtils;->IS_JAVA_1_5:Z

    .line 879
    const-string v0, "AIX"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_AIX:Z

    .line 889
    const-string v1, "HP-UX"

    invoke-static {v1}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_HP_UX:Z

    .line 899
    const-string v2, "Irix"

    invoke-static {v2}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_IRIX:Z

    .line 909
    const-string v3, "Linux"

    invoke-static {v3}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    const-string v3, "LINUX"

    invoke-static {v3}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    :goto_1
    sput-boolean v3, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_LINUX:Z

    .line 919
    const-string v6, "Mac"

    invoke-static {v6}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_MAC:Z

    .line 929
    const-string v6, "Mac OS X"

    invoke-static {v6}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_MAC_OSX:Z

    .line 939
    const-string v7, "OS/2"

    invoke-static {v7}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_OS2:Z

    .line 949
    const-string v7, "Solaris"

    invoke-static {v7}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_SOLARIS:Z

    .line 959
    const-string v8, "SunOS"

    invoke-static {v8}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_SUN_OS:Z

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    if-eqz v8, :cond_4

    :cond_3
    move v4, v5

    .line 970
    :cond_4
    sput-boolean v4, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_UNIX:Z

    .line 982
    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_WINDOWS:Z

    .line 992
    const-string v1, "5.0"

    invoke-static {v0, v1}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_WINDOWS_2000:Z

    .line 1002
    const-string v1, "4.0"

    const-string v2, "Windows 9"

    invoke-static {v2, v1}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_WINDOWS_95:Z

    .line 1013
    const-string v1, "4.1"

    invoke-static {v2, v1}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_WINDOWS_98:Z

    .line 1024
    const-string v1, "4.9"

    invoke-static {v0, v1}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_WINDOWS_ME:Z

    .line 1035
    const-string v1, "Windows NT"

    invoke-static {v1}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_WINDOWS_NT:Z

    .line 1046
    const-string v1, "5.1"

    invoke-static {v0, v1}, Lorg/apache/ldap/common/util/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/ldap/common/util/SystemUtils;->IS_OS_WINDOWS_XP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJavaHome()Ljava/io/File;
    .locals 2

    .line 1254
    new-instance v0, Ljava/io/File;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getJavaIoTmpDir()Ljava/io/File;
    .locals 2

    .line 1267
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getJavaVersion()F
    .locals 1

    .line 1076
    sget v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VERSION_FLOAT:F

    return v0
.end method

.method private static getJavaVersionAsFloat()F
    .locals 4

    .line 1094
    sget-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 1097
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1098
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 1099
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static getJavaVersionAsInt()I
    .locals 4

    .line 1119
    sget-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 1122
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1123
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 1125
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1127
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1129
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getJavaVersionMatches(Ljava/lang/String;)Z
    .locals 1

    .line 1139
    sget-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1142
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getOSMatches(Ljava/lang/String;)Z
    .locals 1

    .line 1152
    sget-object v0, Lorg/apache/ldap/common/util/SystemUtils;->OS_NAME:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1155
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1166
    sget-object v0, Lorg/apache/ldap/common/util/SystemUtils;->OS_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lorg/apache/ldap/common/util/SystemUtils;->OS_VERSION:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1169
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1185
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1188
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Caught a SecurityException reading the system property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v1, "\'; the SystemUtils property value will default to null."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUserDir()Ljava/io/File;
    .locals 2

    .line 1280
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserHome()Ljava/io/File;
    .locals 2

    .line 1293
    new-instance v0, Ljava/io/File;

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isJavaAwtHeadless()Z
    .locals 2

    .line 1242
    sget-object v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_AWT_HEADLESS:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isJavaVersionAtLeast(F)Z
    .locals 1

    .line 1210
    sget v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VERSION_FLOAT:F

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isJavaVersionAtLeast(I)Z
    .locals 1

    .line 1228
    sget v0, Lorg/apache/ldap/common/util/SystemUtils;->JAVA_VERSION_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
