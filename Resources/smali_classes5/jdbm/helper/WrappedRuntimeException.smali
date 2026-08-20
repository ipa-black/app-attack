.class public Ljdbm/helper/WrappedRuntimeException;
.super Ljava/lang/RuntimeException;
.source "WrappedRuntimeException.java"


# instance fields
.field private final _except:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "No message available"

    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    instance-of v0, p1, Ljdbm/helper/WrappedRuntimeException;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljdbm/helper/WrappedRuntimeException;

    iget-object v0, v0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 102
    iput-object v0, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    goto :goto_2

    .line 104
    :cond_2
    iput-object p1, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    if-nez p1, :cond_0

    .line 78
    const-string p1, "No message available"

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 80
    instance-of p1, p2, Ljdbm/helper/WrappedRuntimeException;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Ljdbm/helper/WrappedRuntimeException;

    iget-object p1, p1, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 83
    iput-object p1, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    goto :goto_0

    .line 85
    :cond_1
    iput-object p2, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    :goto_0
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 116
    iget-object v0, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .line 122
    iget-object v0, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 123
    invoke-super {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    .line 132
    iget-object v0, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 133
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .line 142
    iget-object v0, p0, Ljdbm/helper/WrappedRuntimeException;->_except:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 143
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    :goto_0
    return-void
.end method
