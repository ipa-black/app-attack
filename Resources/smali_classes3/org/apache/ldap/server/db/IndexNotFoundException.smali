.class public Lorg/apache/ldap/server/db/IndexNotFoundException;
.super Ljavax/naming/NamingException;
.source "IndexNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x3635373932383737L


# instance fields
.field private final indexName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cannot efficiently search the DIB w/o an index on attribute "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n. To allow such searches please contact the directory\nadministrator to create the index or to enable referrals on searches using these\nattributes to a replica with the required set of indices."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lorg/apache/ldap/server/db/IndexNotFoundException;->indexName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p2, p0, Lorg/apache/ldap/server/db/IndexNotFoundException;->indexName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/db/IndexNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p3}, Lorg/apache/ldap/server/db/IndexNotFoundException;->setRootCause(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getIndexName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexNotFoundException;->indexName:Ljava/lang/String;

    return-object v0
.end method
