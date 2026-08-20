.class public Lorg/apache/ldap/server/db/gui/EntryNode;
.super Ljava/lang/Object;
.source "EntryNode.java"

# interfaces
.implements Ljavax/swing/tree/TreeNode;


# instance fields
.field private final children:Ljava/util/ArrayList;

.field private final db:Lorg/apache/ldap/server/db/Database;

.field private final entry:Ljavax/naming/directory/Attributes;

.field private final id:Ljava/math/BigInteger;

.field private final parent:Lorg/apache/ldap/server/db/gui/EntryNode;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/apache/ldap/server/db/gui/EntryNode;Lorg/apache/ldap/server/db/Database;Ljavax/naming/directory/Attributes;Ljava/util/HashMap;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 53
    invoke-direct/range {v0 .. v7}, Lorg/apache/ldap/server/db/gui/EntryNode;-><init>(Ljava/math/BigInteger;Lorg/apache/ldap/server/db/gui/EntryNode;Lorg/apache/ldap/server/db/Database;Ljavax/naming/directory/Attributes;Ljava/util/HashMap;Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/SearchEngine;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/apache/ldap/server/db/gui/EntryNode;Lorg/apache/ldap/server/db/Database;Ljavax/naming/directory/Attributes;Ljava/util/HashMap;Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/SearchEngine;)V
    .locals 15

    move-object v9, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v11, v9, Lorg/apache/ldap/server/db/gui/EntryNode;->db:Lorg/apache/ldap/server/db/Database;

    .line 62
    iput-object v10, v9, Lorg/apache/ldap/server/db/gui/EntryNode;->id:Ljava/math/BigInteger;

    move-object/from16 v1, p4

    .line 63
    iput-object v1, v9, Lorg/apache/ldap/server/db/gui/EntryNode;->entry:Ljavax/naming/directory/Attributes;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/apache/ldap/server/db/gui/EntryNode;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 68
    iput-object v9, v9, Lorg/apache/ldap/server/db/gui/EntryNode;->parent:Lorg/apache/ldap/server/db/gui/EntryNode;

    goto :goto_0

    .line 72
    :cond_0
    iput-object v0, v9, Lorg/apache/ldap/server/db/gui/EntryNode;->parent:Lorg/apache/ldap/server/db/gui/EntryNode;

    .line 76
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {v11, v10}, Lorg/apache/ldap/server/db/Database;->list(Ljava/math/BigInteger;)Ljavax/naming/NamingEnumeration;

    move-result-object v1

    .line 78
    :goto_1
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v2

    if-nez v2, :cond_5

    .line 85
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->close()V

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 91
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/db/IndexRecord;

    if-eqz v13, :cond_4

    if-eqz v12, :cond_4

    .line 95
    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v11, v2}, Lorg/apache/ldap/server/db/Database;->getChildCount(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_3

    .line 97
    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v13, v12, v2}, Lorg/apache/ldap/server/db/SearchEngine;->evaluate(Lorg/apache/ldap/common/filter/ExprNode;Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v11, v2}, Lorg/apache/ldap/server/db/Database;->lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v5

    .line 100
    new-instance v14, Lorg/apache/ldap/server/db/gui/EntryNode;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v2

    move-object v1, v14

    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/apache/ldap/server/db/gui/EntryNode;-><init>(Ljava/math/BigInteger;Lorg/apache/ldap/server/db/gui/EntryNode;Lorg/apache/ldap/server/db/Database;Ljavax/naming/directory/Attributes;Ljava/util/HashMap;Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/SearchEngine;)V

    .line 102
    iget-object v1, v9, Lorg/apache/ldap/server/db/gui/EntryNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v11, v2}, Lorg/apache/ldap/server/db/Database;->lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v5

    .line 112
    new-instance v14, Lorg/apache/ldap/server/db/gui/EntryNode;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v2

    move-object v1, v14

    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/apache/ldap/server/db/gui/EntryNode;-><init>(Ljava/math/BigInteger;Lorg/apache/ldap/server/db/gui/EntryNode;Lorg/apache/ldap/server/db/Database;Ljavax/naming/directory/Attributes;Ljava/util/HashMap;Lorg/apache/ldap/common/filter/ExprNode;Lorg/apache/ldap/server/db/SearchEngine;)V

    .line 114
    iget-object v1, v9, Lorg/apache/ldap/server/db/gui/EntryNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    :cond_4
    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v11, v2}, Lorg/apache/ldap/server/db/Database;->lookup(Ljava/math/BigInteger;)Ljavax/naming/directory/Attributes;

    move-result-object v5

    .line 120
    new-instance v7, Lorg/apache/ldap/server/db/gui/EntryNode;

    invoke-virtual {v1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object v2

    move-object v1, v7

    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/ldap/server/db/gui/EntryNode;-><init>(Ljava/math/BigInteger;Lorg/apache/ldap/server/db/gui/EntryNode;Lorg/apache/ldap/server/db/Database;Ljavax/naming/directory/Attributes;Ljava/util/HashMap;)V

    .line 122
    iget-object v1, v9, Lorg/apache/ldap/server/db/gui/EntryNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 80
    :cond_5
    invoke-interface {v1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/server/db/IndexRecord;

    .line 81
    new-instance v3, Lorg/apache/ldap/server/db/IndexRecord;

    invoke-direct {v3}, Lorg/apache/ldap/server/db/IndexRecord;-><init>()V

    .line 82
    invoke-virtual {v3, v2}, Lorg/apache/ldap/server/db/IndexRecord;->copy(Lorg/apache/ldap/server/db/IndexRecord;)V

    .line 83
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    move-object/from16 v1, p5

    .line 131
    invoke-virtual {v1, v10, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public children()Ljava/util/Enumeration;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->children:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllowsChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getChildAt(I)Ljavax/swing/tree/TreeNode;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/swing/tree/TreeNode;

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEntryDn()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->db:Lorg/apache/ldap/server/db/Database;

    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->id:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/db/Database;->getEntryDn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntryId()Ljava/math/BigInteger;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->id:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getIndex(Ljavax/swing/tree/TreeNode;)I
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getLdapEntry()Ljavax/naming/directory/Attributes;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->entry:Ljavax/naming/directory/Attributes;

    return-object v0
.end method

.method public getParent()Ljavax/swing/tree/TreeNode;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->parent:Lorg/apache/ldap/server/db/gui/EntryNode;

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    :try_start_0
    new-instance v1, Lorg/apache/ldap/common/name/LdapName;

    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->db:Lorg/apache/ldap/server/db/Database;

    iget-object v3, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->id:Ljava/math/BigInteger;

    invoke-interface {v2, v3}, Lorg/apache/ldap/server/db/Database;->getEntryDn(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->id:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v1}, Lorg/apache/ldap/common/name/LdapName;->getRdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljavax/naming/NamingException;->printStackTrace()V

    .line 197
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "ERROR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/naming/NamingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :goto_0
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 202
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ldap/server/db/gui/EntryNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
