.class public Lorg/apache/kerberos/exceptions/KerberosException;
.super Ljava/lang/Exception;
.source "KerberosException.java"


# instance fields
.field private final errorCode:I

.field private explanatoryData:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 54
    iput p1, p0, Lorg/apache/kerberos/exceptions/KerberosException;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 68
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    iput p1, p0, Lorg/apache/kerberos/exceptions/KerberosException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/exceptions/ErrorType;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Lorg/apache/kerberos/exceptions/ErrorType;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lorg/apache/kerberos/exceptions/ErrorType;->getOrdinal()I

    move-result p1

    iput p1, p0, Lorg/apache/kerberos/exceptions/KerberosException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/exceptions/ErrorType;[B)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Lorg/apache/kerberos/exceptions/ErrorType;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lorg/apache/kerberos/exceptions/ErrorType;->getOrdinal()I

    move-result p1

    iput p1, p0, Lorg/apache/kerberos/exceptions/KerberosException;->errorCode:I

    .line 101
    iput-object p2, p0, Lorg/apache/kerberos/exceptions/KerberosException;->explanatoryData:[B

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/apache/kerberos/exceptions/KerberosException;->errorCode:I

    return v0
.end method

.method public getExplanatoryData()[B
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/kerberos/exceptions/KerberosException;->explanatoryData:[B

    return-object v0
.end method
