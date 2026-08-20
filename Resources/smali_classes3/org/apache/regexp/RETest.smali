.class public Lorg/apache/regexp/RETest;
.super Ljava/lang/Object;
.source "RETest.java"


# static fields
.field static final showSuccesses:Z = false


# instance fields
.field compiler:Lorg/apache/regexp/REDebugCompiler;

.field expr:Ljava/lang/String;

.field failures:I

.field n:I

.field r:Lorg/apache/regexp/RE;

.field re1:Lorg/apache/regexp/REProgram;

.field re1Instructions:[C


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/apache/regexp/RE;

    invoke-direct {v0}, Lorg/apache/regexp/RE;-><init>()V

    iput-object v0, p0, Lorg/apache/regexp/RETest;->r:Lorg/apache/regexp/RE;

    .line 74
    new-instance v0, Lorg/apache/regexp/REDebugCompiler;

    invoke-direct {v0}, Lorg/apache/regexp/REDebugCompiler;-><init>()V

    iput-object v0, p0, Lorg/apache/regexp/RETest;->compiler:Lorg/apache/regexp/REDebugCompiler;

    const/16 v0, 0x1d

    .line 268
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x7c

    aput-char v2, v0, v1

    const/4 v3, 0x2

    const/16 v4, 0x1a

    aput-char v4, v0, v3

    const/4 v3, 0x3

    aput-char v2, v0, v3

    const/4 v5, 0x5

    const/16 v6, 0xd

    aput-char v6, v0, v5

    const/4 v5, 0x6

    const/16 v7, 0x41

    aput-char v7, v0, v5

    const/4 v5, 0x7

    const/4 v8, 0x1

    aput-char v8, v0, v5

    const/16 v5, 0x8

    const/4 v9, 0x4

    aput-char v9, v0, v5

    const/16 v5, 0x9

    const/16 v10, 0x61

    aput-char v10, v0, v5

    const/16 v5, 0xa

    aput-char v2, v0, v5

    const/16 v5, 0xc

    aput-char v3, v0, v5

    const/16 v5, 0x47

    aput-char v5, v0, v6

    const/16 v5, 0xf

    const v6, 0xfff6

    aput-char v6, v0, v5

    const/16 v5, 0x10

    aput-char v2, v0, v5

    const/16 v2, 0x12

    aput-char v3, v0, v2

    const/16 v2, 0x13

    const/16 v5, 0x4e

    aput-char v5, v0, v2

    const/16 v2, 0x15

    aput-char v3, v0, v2

    const/16 v2, 0x16

    aput-char v7, v0, v2

    const/16 v2, 0x17

    aput-char v8, v0, v2

    const/16 v2, 0x18

    aput-char v9, v0, v2

    const/16 v2, 0x19

    const/16 v3, 0x62

    aput-char v3, v0, v2

    const/16 v2, 0x45

    aput-char v2, v0, v4

    .line 267
    iput-object v0, p0, Lorg/apache/regexp/RETest;->re1Instructions:[C

    .line 276
    new-instance v0, Lorg/apache/regexp/REProgram;

    iget-object v2, p0, Lorg/apache/regexp/RETest;->re1Instructions:[C

    invoke-direct {v0, v2}, Lorg/apache/regexp/REProgram;-><init>([C)V

    iput-object v0, p0, Lorg/apache/regexp/RETest;->re1:Lorg/apache/regexp/REProgram;

    .line 282
    iput v1, p0, Lorg/apache/regexp/RETest;->n:I

    .line 287
    iput v1, p0, Lorg/apache/regexp/RETest;->failures:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 12

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/apache/regexp/RE;

    invoke-direct {v0}, Lorg/apache/regexp/RE;-><init>()V

    iput-object v0, p0, Lorg/apache/regexp/RETest;->r:Lorg/apache/regexp/RE;

    .line 74
    new-instance v0, Lorg/apache/regexp/REDebugCompiler;

    invoke-direct {v0}, Lorg/apache/regexp/REDebugCompiler;-><init>()V

    iput-object v0, p0, Lorg/apache/regexp/RETest;->compiler:Lorg/apache/regexp/REDebugCompiler;

    const/16 v0, 0x1d

    .line 268
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x7c

    aput-char v2, v0, v1

    const/4 v3, 0x2

    const/16 v4, 0x1a

    aput-char v4, v0, v3

    const/4 v5, 0x3

    aput-char v2, v0, v5

    const/4 v6, 0x5

    const/16 v7, 0xd

    aput-char v7, v0, v6

    const/4 v6, 0x6

    const/16 v8, 0x41

    aput-char v8, v0, v6

    const/4 v6, 0x7

    const/4 v9, 0x1

    aput-char v9, v0, v6

    const/16 v6, 0x8

    const/4 v10, 0x4

    aput-char v10, v0, v6

    const/16 v6, 0x9

    const/16 v11, 0x61

    aput-char v11, v0, v6

    const/16 v6, 0xa

    aput-char v2, v0, v6

    const/16 v6, 0xc

    aput-char v5, v0, v6

    const/16 v6, 0x47

    aput-char v6, v0, v7

    const/16 v6, 0xf

    const v7, 0xfff6

    aput-char v7, v0, v6

    const/16 v6, 0x10

    aput-char v2, v0, v6

    const/16 v2, 0x12

    aput-char v5, v0, v2

    const/16 v2, 0x13

    const/16 v6, 0x4e

    aput-char v6, v0, v2

    const/16 v2, 0x15

    aput-char v5, v0, v2

    const/16 v2, 0x16

    aput-char v8, v0, v2

    const/16 v2, 0x17

    aput-char v9, v0, v2

    const/16 v2, 0x18

    aput-char v10, v0, v2

    const/16 v2, 0x19

    const/16 v5, 0x62

    aput-char v5, v0, v2

    const/16 v2, 0x45

    aput-char v2, v0, v4

    .line 267
    iput-object v0, p0, Lorg/apache/regexp/RETest;->re1Instructions:[C

    .line 276
    new-instance v0, Lorg/apache/regexp/REProgram;

    iget-object v2, p0, Lorg/apache/regexp/RETest;->re1Instructions:[C

    invoke-direct {v0, v2}, Lorg/apache/regexp/REProgram;-><init>([C)V

    iput-object v0, p0, Lorg/apache/regexp/RETest;->re1:Lorg/apache/regexp/REProgram;

    .line 282
    iput v1, p0, Lorg/apache/regexp/RETest;->n:I

    .line 287
    iput v1, p0, Lorg/apache/regexp/RETest;->failures:I

    .line 126
    :try_start_0
    array-length v0, p1

    if-ne v0, v3, :cond_0

    .line 128
    aget-object p1, p1, v9

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RETest;->runInteractiveTests(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_0
    array-length v0, p1

    if-ne v0, v9, :cond_1

    .line 133
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RETest;->runAutomatedTests(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Usage: RETest ([-i] [regex]) ([/path/to/testfile.txt])"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    .line 90
    :try_start_0
    invoke-static {}, Lorg/apache/regexp/RETest;->test()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static test()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/apache/regexp/RETest;

    invoke-direct {v0}, Lorg/apache/regexp/RETest;-><init>()V

    .line 106
    const-string v1, "docs/RETest.txt"

    invoke-virtual {v0, v1}, Lorg/apache/regexp/RETest;->runAutomatedTests(Ljava/lang/String;)V

    .line 107
    iget v0, v0, Lorg/apache/regexp/RETest;->failures:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method die(Ljava/lang/String;)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "FATAL ERROR: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 200
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method fail(Ljava/lang/String;)V
    .locals 3

    .line 209
    iget v0, p0, Lorg/apache/regexp/RETest;->failures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/regexp/RETest;->failures:I

    .line 210
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 211
    const-string v1, "*******************************************************"

    invoke-virtual {p0, v1}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 212
    const-string v2, "*********************  FAILURE!  **********************"

    invoke-virtual {p0, v2}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, v1}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v0}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, p1}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 216
    const-string p1, ""

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lorg/apache/regexp/RETest;->compiler:Lorg/apache/regexp/REDebugCompiler;

    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Lorg/apache/regexp/REDebugCompiler;->dumpProgram(Ljava/io/PrintWriter;)V

    .line 218
    invoke-virtual {p0, v0}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    return-void
.end method

.method runAutomatedTests(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    const-string v0, "ERR"

    const-string v1, "\""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 298
    new-instance v4, Lorg/apache/regexp/RE;

    iget-object v5, p0, Lorg/apache/regexp/RETest;->re1:Lorg/apache/regexp/REProgram;

    invoke-direct {v4, v5}, Lorg/apache/regexp/RE;-><init>(Lorg/apache/regexp/REProgram;)V

    .line 299
    const-string v5, "a*b"

    invoke-virtual {p0, v5}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 300
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "aaaab = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "aaab"

    invoke-virtual {v4, v7}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, v4}, Lorg/apache/regexp/RETest;->showParens(Lorg/apache/regexp/RE;)V

    .line 302
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "b = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "b"

    invoke-virtual {v4, v7}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0, v4}, Lorg/apache/regexp/RETest;->showParens(Lorg/apache/regexp/RE;)V

    .line 304
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "c = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "c"

    invoke-virtual {v4, v7}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0, v4}, Lorg/apache/regexp/RETest;->showParens(Lorg/apache/regexp/RE;)V

    .line 306
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "ccccaaaaab = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "ccccaaaaab"

    invoke-virtual {v4, v7}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, v4}, Lorg/apache/regexp/RETest;->showParens(Lorg/apache/regexp/RE;)V

    .line 309
    new-instance v4, Lorg/apache/regexp/RE;

    invoke-direct {v4, v5}, Lorg/apache/regexp/RE;-><init>(Ljava/lang/String;)V

    .line 310
    const-string v6, "xxxxaabxxxxbyyyyaaabzzz"

    invoke-virtual {v4, v6}, Lorg/apache/regexp/RE;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 311
    new-instance v6, Lorg/apache/regexp/RE;

    const-string v7, "x+"

    invoke-direct {v6, v7}, Lorg/apache/regexp/RE;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v6, v4}, Lorg/apache/regexp/RE;->grep([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move v7, v6

    .line 313
    :goto_0
    array-length v8, v4

    if-lt v7, v8, :cond_e

    .line 318
    new-instance v4, Lorg/apache/regexp/RE;

    invoke-direct {v4, v5}, Lorg/apache/regexp/RE;-><init>(Ljava/lang/String;)V

    .line 319
    const-string v5, "aaaabfooaaabgarplyaaabwackyb"

    const-string v7, "-"

    invoke-virtual {v4, v5, v7}, Lorg/apache/regexp/RE;->subst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 320
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "s = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 326
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 330
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_6

    .line 335
    :cond_0
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ""

    if-nez v5, :cond_1

    goto :goto_3

    .line 337
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 342
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 343
    const-string v8, "#"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 347
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 349
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Script error.  Line = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 355
    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 361
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/regexp/RETest;->expr:Ljava/lang/String;

    .line 362
    iget v5, p0, Lorg/apache/regexp/RETest;->n:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/regexp/RETest;->n:I

    .line 363
    invoke-virtual {p0, v7}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 364
    new-instance v5, Ljava/lang/StringBuffer;

    iget v8, p0, Lorg/apache/regexp/RETest;->n:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v8, ". "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v8, p0, Lorg/apache/regexp/RETest;->expr:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, v7}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    :try_start_2
    iget-object v5, p0, Lorg/apache/regexp/RETest;->compiler:Lorg/apache/regexp/REDebugCompiler;

    iget-object v7, p0, Lorg/apache/regexp/RETest;->expr:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/apache/regexp/RECompiler;->compile(Ljava/lang/String;)Lorg/apache/regexp/REProgram;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/regexp/RE;->setProgram(Lorg/apache/regexp/REProgram;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 393
    :try_start_3
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Compiler threw fatal error \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/regexp/RETest;->fail(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v5

    .line 377
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 380
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 382
    const-string v7, "   Match: ERR"

    invoke-virtual {p0, v7}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 383
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Produces an error ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "), as expected."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/regexp/RETest;->success(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 388
    :cond_3
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Produces the unexpected error \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/regexp/RETest;->fail(Ljava/lang/String;)V

    .line 398
    :goto_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 399
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "   Match against: \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 404
    const-string v5, "Was expected to be an error, but wasn\'t."

    invoke-virtual {p0, v5}, Lorg/apache/regexp/RETest;->fail(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 412
    :cond_4
    :try_start_4
    invoke-virtual {v4, v5}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;)Z

    move-result v7

    .line 415
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 418
    const-string v9, "Test script error!"

    const-string v10, "NO"

    const-string v11, "YES"

    if-eqz v7, :cond_9

    .line 421
    :try_start_5
    const-string v7, "   Match: YES"

    invoke-virtual {p0, v7}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v10, "Matched \""

    if-eqz v7, :cond_5

    .line 426
    :try_start_6
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "\", when not expected to."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/regexp/RETest;->fail(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 429
    :cond_5
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 432
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "\", as expected:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/regexp/RETest;->success(Ljava/lang/String;)V

    .line 440
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "   Paren count: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/regexp/RE;->getParenCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    move v5, v6

    .line 443
    :goto_5
    invoke-virtual {v4}, Lorg/apache/regexp/RE;->getParenCount()I

    move-result v7

    if-lt v5, v7, :cond_6

    goto/16 :goto_1

    .line 446
    :cond_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 447
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "   Paren "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v4, v5}, Lorg/apache/regexp/RE;->getParen(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v4, v5}, Lorg/apache/regexp/RE;->getParen(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 453
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Register "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " should be = \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\", but is \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v4, v5}, Lorg/apache/regexp/RE;->getParen(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\" instead."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/regexp/RETest;->fail(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 460
    :cond_8
    invoke-virtual {p0, v9}, Lorg/apache/regexp/RETest;->die(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 466
    :cond_9
    const-string v7, "   Match: NO"

    invoke-virtual {p0, v7}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v11, "Did not match \""

    if-eqz v7, :cond_a

    .line 472
    :try_start_7
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "\", when expected to."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/regexp/RETest;->fail(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 475
    :cond_a
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 478
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "\", as expected."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/regexp/RETest;->success(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 483
    :cond_b
    invoke-virtual {p0, v9}, Lorg/apache/regexp/RETest;->die(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v5

    .line 498
    :try_start_8
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Matcher threw fatal error \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/regexp/RETest;->fail(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v5

    .line 491
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Matcher threw exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/regexp/RETest;->fail(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 505
    :cond_c
    :goto_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 509
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\n\nMatch time = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 512
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\nTests complete.  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/regexp/RETest;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " tests, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/regexp/RETest;->failures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " failure(s)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 505
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 327
    throw v0

    .line 325
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Could not find: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_e
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "s["

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method runInteractiveTests(Ljava/lang/String;)V
    .locals 3

    .line 152
    const-string v0, "\n"

    .line 155
    :try_start_0
    iget-object v1, p0, Lorg/apache/regexp/RETest;->r:Lorg/apache/regexp/RE;

    iget-object v2, p0, Lorg/apache/regexp/RETest;->compiler:Lorg/apache/regexp/REDebugCompiler;

    invoke-virtual {v2, p1}, Lorg/apache/regexp/RECompiler;->compile(Ljava/lang/String;)Lorg/apache/regexp/REProgram;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/regexp/RE;->setProgram(Lorg/apache/regexp/REProgram;)V

    .line 158
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lorg/apache/regexp/RETest;->compiler:Lorg/apache/regexp/REDebugCompiler;

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lorg/apache/regexp/REDebugCompiler;->dumpProgram(Ljava/io/PrintWriter;)V

    .line 167
    :goto_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 169
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 170
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lorg/apache/regexp/RETest;->r:Lorg/apache/regexp/RE;

    invoke-virtual {v0, p1}, Lorg/apache/regexp/RE;->match(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    const-string p1, "Match successful."

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_0
    const-string p1, "Match failed."

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 183
    :goto_1
    iget-object p1, p0, Lorg/apache/regexp/RETest;->r:Lorg/apache/regexp/RE;

    invoke-virtual {p0, p1}, Lorg/apache/regexp/RETest;->showParens(Lorg/apache/regexp/RE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 188
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method say(Ljava/lang/String;)V
    .locals 1

    .line 240
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method show()V
    .locals 2

    .line 248
    const-string v0, "\n-----------------------\n"

    invoke-virtual {p0, v0}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Expression #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/regexp/RETest;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/regexp/RETest;->expr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    return-void
.end method

.method showParens(Lorg/apache/regexp/RE;)V
    .locals 3

    const/4 v0, 0x0

    .line 259
    :goto_0
    invoke-virtual {p1}, Lorg/apache/regexp/RE;->getParenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 262
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/apache/regexp/RE;->getParen(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/regexp/RETest;->say(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method success(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
