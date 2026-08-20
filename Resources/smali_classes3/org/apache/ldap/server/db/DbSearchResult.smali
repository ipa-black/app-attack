.class public Lorg/apache/ldap/server/db/DbSearchResult;
.super Ljavax/naming/directory/SearchResult;
.source "DbSearchResult.java"


# static fields
.field private static final serialVersionUID:J = 0x3730373539373231L


# instance fields
.field private final id:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V
    .locals 0

    .line 57
    invoke-direct {p0, p2, p3, p4}, Ljavax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V

    .line 58
    iput-object p1, p0, Lorg/apache/ldap/server/db/DbSearchResult;->id:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p2, p3, p4, p5}, Ljavax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;Z)V

    .line 75
    iput-object p1, p0, Lorg/apache/ldap/server/db/DbSearchResult;->id:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V
    .locals 0

    .line 91
    invoke-direct {p0, p2, p3, p4, p5}, Ljavax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V

    .line 92
    iput-object p1, p0, Lorg/apache/ldap/server/db/DbSearchResult;->id:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 109
    invoke-direct/range {v0 .. v5}, Ljavax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;Z)V

    .line 110
    iput-object p1, p0, Lorg/apache/ldap/server/db/DbSearchResult;->id:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getId()Ljava/math/BigInteger;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/ldap/server/db/DbSearchResult;->id:Ljava/math/BigInteger;

    return-object v0
.end method
