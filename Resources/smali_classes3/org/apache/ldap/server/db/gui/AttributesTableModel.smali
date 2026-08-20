.class public Lorg/apache/ldap/server/db/gui/AttributesTableModel;
.super Ljavax/swing/table/AbstractTableModel;
.source "AttributesTableModel.java"


# static fields
.field public static final KEY_COL:Ljava/lang/String; = "Keys"

.field public static final VAL_COL:Ljava/lang/String; = "Values"

.field static synthetic class$0:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x2d31363430313939L


# instance fields
.field private final dn:Ljava/lang/String;

.field private final entry:Ljavax/naming/directory/Attributes;

.field private final id:Ljava/math/BigInteger;

.field private isMutable:Z

.field private final transient keyList:Ljava/util/ArrayList;

.field private final transient valList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljavax/naming/directory/Attributes;Ljava/math/BigInteger;Ljava/lang/String;Z)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    .line 69
    iput-object p3, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->dn:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->id:Ljava/math/BigInteger;

    .line 71
    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->entry:Ljavax/naming/directory/Attributes;

    .line 72
    iput-boolean p4, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->isMutable:Z

    .line 74
    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->getIDs()Ljavax/naming/NamingEnumeration;

    move-result-object p2

    const/4 p3, 0x0

    move p4, p3

    .line 77
    :goto_0
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->keyList:Ljava/util/ArrayList;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->valList:Ljava/util/ArrayList;

    .line 86
    iget-object p1, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->entry:Ljavax/naming/directory/Attributes;

    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->getIDs()Ljavax/naming/NamingEnumeration;

    move-result-object v0

    .line 87
    :goto_1
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 90
    iget-object p2, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->entry:Ljavax/naming/directory/Attributes;

    invoke-interface {p2, p1}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v1

    move p1, p3

    .line 92
    :goto_2
    invoke-interface {v1}, Ljavax/naming/directory/Attribute;->size()I

    move-result p2

    if-lt p1, p2, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    :try_start_0
    iget-object p2, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->keyList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object p2, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->valList:Ljava/util/ArrayList;

    invoke-interface {v1, p1}, Ljavax/naming/directory/Attribute;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 101
    invoke-virtual {p2}, Ljavax/naming/NamingException;->printStackTrace()V

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 79
    :cond_2
    invoke-interface {p2}, Ljavax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    invoke-interface {p1, v0}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v0

    invoke-interface {v0}, Ljavax/naming/directory/Attribute;->size()I

    move-result v0

    add-int/2addr p4, v0

    goto :goto_0
.end method


# virtual methods
.method public delete(I)V
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->valList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 256
    invoke-virtual {p0, p1, p1}, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->fireTableRowsDeleted(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getColumnClass(I)Ljava/lang/Class;
    .locals 1

    .line 152
    sget-object p1, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->class$0:Ljava/lang/Class;

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "java.lang.String"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object p1, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->class$0:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 115
    const-string p1, "Keys"

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 119
    const-string p1, "Values"

    return-object p1

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "There can only be 2 columns at index 0 and at 1"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEntryDn()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->dn:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryId()Ljava/math/BigInteger;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->id:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 172
    const-string p1, "NULL"

    return-object p1

    .line 175
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object p2, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->keyList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 179
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->getColumnName(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Values"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 181
    iget-object p2, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->valList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 185
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "You didn\'t correctly set col names"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insert(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    iget-object p2, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->valList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 276
    invoke-virtual {p0, p1, p1}, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->fireTableRowsInserted(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isCellEditable(II)Z
    .locals 0

    .line 161
    iget-boolean p1, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->isMutable:Z

    return p1
.end method

.method public setValue(Ljava/lang/Object;II)V
    .locals 2

    const/4 v0, 0x1

    if-gt p3, v0, :cond_3

    if-gez p3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    .line 203
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->keyList:Ljava/util/ArrayList;

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->valList:Ljava/util/ArrayList;

    .line 210
    :goto_0
    iget-object v1, p0, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_2

    return-void

    .line 215
    :cond_2
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {p0, p2, p3}, Lorg/apache/ldap/server/db/gui/AttributesTableModel;->fireTableCellUpdated(II)V

    :cond_3
    :goto_1
    return-void
.end method
