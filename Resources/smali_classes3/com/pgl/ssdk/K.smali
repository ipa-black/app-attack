.class public Lcom/pgl/ssdk/K;
.super Ljava/lang/Object;
.source "SafelyLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pgl/ssdk/K$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pgl/ssdk/K;->a:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/pgl/ssdk/K$a;
    .locals 16

    move-object/from16 v1, p1

    const-class v2, Lcom/pgl/ssdk/K;

    monitor-enter v2

    .line 1
    :try_start_0
    sget-object v0, Lcom/pgl/ssdk/K;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    monitor-exit v2

    return-object v3

    :cond_0
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 7
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/pgl/ssdk/K;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    .line 31
    :try_start_2
    new-instance v1, Lcom/pgl/ssdk/K$a;

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-direct {v1, v4, v3}, Lcom/pgl/ssdk/K$a;-><init>(I[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 32
    :try_start_3
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 36
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "libso"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 38
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 39
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_1
    move-object v8, v3

    :cond_2
    :goto_0
    if-eqz v8, :cond_3

    .line 41
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v9, v3

    :goto_1
    const/4 v8, 0x2

    if-nez v9, :cond_4

    .line 42
    new-instance v0, Lcom/pgl/ssdk/K$a;

    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "output null"

    aput-object v3, v1, v6

    invoke-direct {v0, v4, v1}, Lcom/pgl/ssdk/K$a;-><init>(I[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    monitor-exit v2

    return-object v0

    .line 44
    :cond_4
    :try_start_4
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 47
    :cond_5
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 48
    new-instance v10, Ljava/util/zip/ZipFile;

    new-instance v11, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 50
    :try_start_6
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v10, v0, v1}, Lcom/pgl/ssdk/K;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_6

    .line 52
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v10, v0, v1}, Lcom/pgl/ssdk/K;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_8

    .line 56
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 57
    invoke-virtual {v10, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 58
    :try_start_7
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v0, 0x4000

    .line 60
    :try_start_8
    new-array v0, v0, [B

    .line 61
    :goto_2
    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_7

    .line 62
    invoke-virtual {v12, v0, v5, v13}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 64
    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v13, 0x1ed

    .line 65
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v13, v15, v14}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "android.os.FileUtils"

    invoke-static {v14, v0, v13}, Lcom/pgl/ssdk/I;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 66
    :try_start_9
    invoke-static {v12}, Lcom/pgl/ssdk/c;->a(Ljava/io/Closeable;)V

    .line 67
    invoke-static {v11}, Lcom/pgl/ssdk/c;->a(Ljava/io/Closeable;)V

    .line 68
    invoke-static {v10}, Lcom/pgl/ssdk/c;->a(Ljava/util/zip/ZipFile;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object v0, v3

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 69
    :cond_8
    :try_start_a
    new-instance v0, Lcom/pgl/ssdk/K$a;

    new-array v11, v6, [Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/pgl/ssdk/K;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-direct {v0, v8, v11}, Lcom/pgl/ssdk/K$a;-><init>(I[Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 75
    :try_start_b
    invoke-static {v3}, Lcom/pgl/ssdk/c;->a(Ljava/io/Closeable;)V

    .line 76
    invoke-static {v3}, Lcom/pgl/ssdk/c;->a(Ljava/io/Closeable;)V

    .line 77
    invoke-static {v10}, Lcom/pgl/ssdk/c;->a(Ljava/util/zip/ZipFile;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v11, v3

    :goto_3
    move-object v12, v3

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v10, v3

    move-object v11, v10

    move-object v12, v11

    .line 78
    :goto_4
    :try_start_c
    new-instance v13, Lcom/pgl/ssdk/K$a;

    new-array v14, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v5

    invoke-direct {v13, v4, v14}, Lcom/pgl/ssdk/K$a;-><init>(I[Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 80
    :try_start_d
    invoke-static {v12}, Lcom/pgl/ssdk/c;->a(Ljava/io/Closeable;)V

    .line 81
    invoke-static {v11}, Lcom/pgl/ssdk/c;->a(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v10}, Lcom/pgl/ssdk/c;->a(Ljava/util/zip/ZipFile;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object v0, v13

    :goto_5
    if-eqz v0, :cond_9

    monitor-exit v2

    return-object v0

    .line 83
    :cond_9
    :try_start_e
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/pgl/ssdk/K;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_6
    monitor-exit v2

    return-object v3

    :catchall_5
    move-exception v0

    .line 86
    :try_start_f
    new-instance v1, Lcom/pgl/ssdk/K$a;

    new-array v3, v8, [Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-direct {v1, v4, v3}, Lcom/pgl/ssdk/K$a;-><init>(I[Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    monitor-exit v2

    return-object v1

    :catchall_6
    move-exception v0

    .line 87
    :try_start_10
    invoke-static {v12}, Lcom/pgl/ssdk/c;->a(Ljava/io/Closeable;)V

    .line 88
    invoke-static {v11}, Lcom/pgl/ssdk/c;->a(Ljava/io/Closeable;)V

    .line 89
    invoke-static {v10}, Lcom/pgl/ssdk/c;->a(Ljava/util/zip/ZipFile;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static a(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x5

    .line 91
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "armeabi-v7a"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "arm64-v8a"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "x86"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "x86_64"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "armeabi"

    aput-object v5, v2, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 92
    aget-object v3, v2, v4

    .line 93
    invoke-static {p0, v3, p1}, Lcom/pgl/ssdk/K;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 95
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    :cond_1
    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "supportedABIS"

    .line 112
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "curABIs"

    .line 113
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "apkABIS"

    .line 114
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 117
    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x2d

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gtz v0, :cond_1

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 126
    invoke-static {p2}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    return-object p0
.end method
