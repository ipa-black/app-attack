.class public Lorg/apache/ldap/common/util/NestableDelegate;
.super Ljava/lang/Object;
.source "NestableDelegate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final transient MUST_BE_THROWABLE:Ljava/lang/String; = "The Nestable implementation passed to the NestableDelegate(Nestable) constructor must extend java.lang.Throwable"

.field static synthetic class$org$apache$ldap$common$util$Nestable:Ljava/lang/Class; = null

.field public static topDown:Z = true

.field public static trimStackFrames:Z = true


# instance fields
.field private nestable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/util/Nestable;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/ldap/common/util/NestableDelegate;->nestable:Ljava/lang/Throwable;

    .line 82
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lorg/apache/ldap/common/util/NestableDelegate;->nestable:Ljava/lang/Throwable;

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Nestable implementation passed to the NestableDelegate(Nestable) constructor must extend java.lang.Throwable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 104
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public getMessage(I)Ljava/lang/String;
    .locals 1

    .line 103
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/NestableDelegate;->getThrowable(I)Ljava/lang/Throwable;

    move-result-object p1

    .line 104
    sget-object v0, Lorg/apache/ldap/common/util/NestableDelegate;->class$org$apache$ldap$common$util$Nestable:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.ldap.common.util.Nestable"

    invoke-static {v0}, Lorg/apache/ldap/common/util/NestableDelegate;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/util/NestableDelegate;->class$org$apache$ldap$common$util$Nestable:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    check-cast p1, Lorg/apache/ldap/common/util/Nestable;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/ldap/common/util/Nestable;->getMessage(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/common/util/NestableDelegate;->nestable:Ljava/lang/Throwable;

    invoke-static {v1}, Lorg/apache/ldap/common/util/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 135
    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 6

    .line 156
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/NestableDelegate;->getThrowables()[Ljava/lang/Throwable;

    move-result-object v0

    .line 157
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    .line 158
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 159
    sget-object v4, Lorg/apache/ldap/common/util/NestableDelegate;->class$org$apache$ldap$common$util$Nestable:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "org.apache.ldap.common.util.Nestable"

    invoke-static {v4}, Lorg/apache/ldap/common/util/NestableDelegate;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/ldap/common/util/NestableDelegate;->class$org$apache$ldap$common$util$Nestable:Ljava/lang/Class;

    :cond_0
    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v0, v3

    check-cast v4, Lorg/apache/ldap/common/util/Nestable;

    invoke-interface {v4, v2}, Lorg/apache/ldap/common/util/Nestable;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 3

    .line 333
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 334
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 337
    instance-of v2, p1, Lorg/apache/ldap/common/util/Nestable;

    if-eqz v2, :cond_0

    .line 338
    check-cast p1, Lorg/apache/ldap/common/util/Nestable;

    invoke-interface {p1, v1}, Lorg/apache/ldap/common/util/Nestable;->printPartialStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 342
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/ldap/common/util/ExceptionUtils;->getStackFrames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThrowable(I)Ljava/lang/Throwable;
    .locals 1

    if-nez p1, :cond_0

    .line 181
    iget-object p1, p0, Lorg/apache/ldap/common/util/NestableDelegate;->nestable:Ljava/lang/Throwable;

    return-object p1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/NestableDelegate;->getThrowables()[Ljava/lang/Throwable;

    move-result-object v0

    .line 184
    aget-object p1, v0, p1

    return-object p1
.end method

.method public getThrowableCount()I
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableDelegate;->nestable:Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/apache/ldap/common/util/ExceptionUtils;->getThrowableCount(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public getThrowables()[Ljava/lang/Throwable;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableDelegate;->nestable:Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/apache/ldap/common/util/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public indexOfThrowable(Ljava/lang/Class;I)I
    .locals 3

    .line 227
    const-string v0, "The start index was out of bounds: "

    if-ltz p2, :cond_3

    .line 230
    iget-object v1, p0, Lorg/apache/ldap/common/util/NestableDelegate;->nestable:Ljava/lang/Throwable;

    invoke-static {v1}, Lorg/apache/ldap/common/util/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v1

    .line 231
    array-length v2, v1

    if-ge p2, v2, :cond_2

    .line 235
    :goto_0
    array-length v0, v1

    if-ge p2, v0, :cond_1

    .line 236
    aget-object v0, v1, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 232
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " >= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    array-length v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public printStackTrace()V
    .locals 1

    .line 248
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/NestableDelegate;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2

    .line 259
    monitor-enter p1

    .line 260
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 261
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/NestableDelegate;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 263
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 264
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 6

    .line 279
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableDelegate;->nestable:Ljava/lang/Throwable;

    .line 281
    invoke-static {}, Lorg/apache/ldap/common/util/ExceptionUtils;->isThrowableNested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    instance-of v1, v0, Lorg/apache/ldap/common/util/Nestable;

    if-eqz v1, :cond_0

    .line 283
    check-cast v0, Lorg/apache/ldap/common/util/Nestable;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/util/Nestable;->printPartialStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :goto_0
    return-void

    .line 291
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/NestableDelegate;->getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-static {v0}, Lorg/apache/ldap/common/util/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 299
    :cond_2
    const-string v0, "Caused by: "

    .line 300
    sget-boolean v2, Lorg/apache/ldap/common/util/NestableDelegate;->topDown:Z

    if-nez v2, :cond_3

    .line 301
    const-string v0, "Rethrown as: "

    .line 302
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 306
    :cond_3
    sget-boolean v2, Lorg/apache/ldap/common/util/NestableDelegate;->trimStackFrames:Z

    if-eqz v2, :cond_4

    .line 307
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/util/NestableDelegate;->trimStackFrames(Ljava/util/List;)V

    .line 310
    :cond_4
    monitor-enter p1

    .line 311
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 313
    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_6

    .line 314
    aget-object v5, v2, v4

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 316
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 317
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 320
    :cond_7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected trimStackFrames(Ljava/util/List;)V
    .locals 5

    .line 354
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 355
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    .line 356
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 358
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 359
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 360
    invoke-static {v3, v4}, Lorg/apache/ldap/common/util/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    .line 362
    array-length v1, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 364
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "\t... "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " more"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
