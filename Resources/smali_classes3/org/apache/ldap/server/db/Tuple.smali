.class public Lorg/apache/ldap/server/db/Tuple;
.super Ljava/lang/Object;
.source "Tuple.java"


# instance fields
.field private key:Ljava/lang/Object;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/ldap/server/db/Tuple;->key:Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Lorg/apache/ldap/server/db/Tuple;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/ldap/server/db/Tuple;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/ldap/server/db/Tuple;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setKey(Ljava/lang/Object;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/apache/ldap/server/db/Tuple;->key:Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/apache/ldap/server/db/Tuple;->value:Ljava/lang/Object;

    return-void
.end method
