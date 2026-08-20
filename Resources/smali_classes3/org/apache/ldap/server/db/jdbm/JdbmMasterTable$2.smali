.class final Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable$2;
.super Lorg/apache/ldap/server/schema/SerializableComparator;
.source "JdbmMasterTable.java"


# static fields
.field private static final serialVersionUID:J = 0x2d39313831383735L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/schema/SerializableComparator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 57
    invoke-static {}, Lorg/apache/ldap/server/db/jdbm/JdbmMasterTable;->access$0()Ljdbm/helper/StringComparator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljdbm/helper/StringComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
