.class public Lorg/apache/ldap/common/util/NestableException;
.super Ljava/lang/Exception;
.source "NestableException.java"

# interfaces
.implements Lorg/apache/ldap/common/util/Nestable;


# instance fields
.field private cause:Ljava/lang/Throwable;

.field protected delegate:Lorg/apache/ldap/common/util/NestableDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 95
    new-instance v0, Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/util/NestableDelegate;-><init>(Lorg/apache/ldap/common/util/Nestable;)V

    iput-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance p1, Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-direct {p1, p0}, Lorg/apache/ldap/common/util/NestableDelegate;-><init>(Lorg/apache/ldap/common/util/Nestable;)V

    iput-object p1, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lorg/apache/ldap/common/util/NestableException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance p1, Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-direct {p1, p0}, Lorg/apache/ldap/common/util/NestableDelegate;-><init>(Lorg/apache/ldap/common/util/Nestable;)V

    iput-object p1, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    .line 143
    iput-object p2, p0, Lorg/apache/ldap/common/util/NestableException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 95
    new-instance v0, Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/util/NestableDelegate;-><init>(Lorg/apache/ldap/common/util/Nestable;)V

    iput-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    .line 130
    iput-object p1, p0, Lorg/apache/ldap/common/util/NestableException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 156
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 167
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/NestableDelegate;->getMessage(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/NestableDelegate;->getMessages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThrowable(I)Ljava/lang/Throwable;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/NestableDelegate;->getThrowable(I)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public getThrowableCount()I
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/NestableDelegate;->getThrowableCount()I

    move-result v0

    return v0
.end method

.method public getThrowables()[Ljava/lang/Throwable;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/NestableDelegate;->getThrowables()[Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public indexOfThrowable(Ljava/lang/Class;)I
    .locals 2

    .line 190
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/ldap/common/util/NestableDelegate;->indexOfThrowable(Ljava/lang/Class;I)I

    move-result p1

    return p1
.end method

.method public indexOfThrowable(Ljava/lang/Class;I)I
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ldap/common/util/NestableDelegate;->indexOfThrowable(Ljava/lang/Class;I)I

    move-result p1

    return p1
.end method

.method public final printPartialStackTrace(Ljava/io/PrintWriter;)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public printStackTrace()V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/NestableDelegate;->printStackTrace()V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/NestableDelegate;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableException;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/NestableDelegate;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
