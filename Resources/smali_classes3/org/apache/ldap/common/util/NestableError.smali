.class public Lorg/apache/ldap/common/util/NestableError;
.super Ljava/lang/Error;
.source "NestableError.java"

# interfaces
.implements Lorg/apache/ldap/common/util/Nestable;


# instance fields
.field private cause:Ljava/lang/Throwable;

.field protected delegate:Lorg/apache/ldap/common/util/NestableDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 34
    new-instance v0, Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/util/NestableDelegate;-><init>(Lorg/apache/ldap/common/util/Nestable;)V

    iput-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance p1, Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-direct {p1, p0}, Lorg/apache/ldap/common/util/NestableDelegate;-><init>(Lorg/apache/ldap/common/util/Nestable;)V

    iput-object p1, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lorg/apache/ldap/common/util/NestableError;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance p1, Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-direct {p1, p0}, Lorg/apache/ldap/common/util/NestableDelegate;-><init>(Lorg/apache/ldap/common/util/Nestable;)V

    iput-object p1, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    .line 82
    iput-object p2, p0, Lorg/apache/ldap/common/util/NestableError;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 34
    new-instance v0, Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/util/NestableDelegate;-><init>(Lorg/apache/ldap/common/util/Nestable;)V

    iput-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    .line 69
    iput-object p1, p0, Lorg/apache/ldap/common/util/NestableError;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 95
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 98
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

    .line 106
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/NestableDelegate;->getMessage(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/NestableDelegate;->getMessages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThrowable(I)Ljava/lang/Throwable;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/NestableDelegate;->getThrowable(I)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public getThrowableCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/NestableDelegate;->getThrowableCount()I

    move-result v0

    return v0
.end method

.method public getThrowables()[Ljava/lang/Throwable;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/NestableDelegate;->getThrowables()[Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public indexOfThrowable(Ljava/lang/Class;)I
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/ldap/common/util/NestableDelegate;->indexOfThrowable(Ljava/lang/Class;I)I

    move-result p1

    return p1
.end method

.method public indexOfThrowable(Ljava/lang/Class;I)I
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ldap/common/util/NestableDelegate;->indexOfThrowable(Ljava/lang/Class;I)I

    move-result p1

    return p1
.end method

.method public final printPartialStackTrace(Ljava/io/PrintWriter;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Ljava/lang/Error;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public printStackTrace()V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/NestableDelegate;->printStackTrace()V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/NestableDelegate;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/ldap/common/util/NestableError;->delegate:Lorg/apache/ldap/common/util/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/NestableDelegate;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
