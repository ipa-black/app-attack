.class public Lorg/apache/ldap/common/name/LdapName;
.super Ljava/lang/Object;
.source "LdapName.java"

# interfaces
.implements Ljavax/naming/Name;


# static fields
.field private static s_parser:Lorg/apache/ldap/common/name/DnParser;


# instance fields
.field private m_isClean:Z

.field private m_list:Ljava/util/List;

.field private m_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_isClean:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_isClean:Z

    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lorg/apache/ldap/common/name/LdapName;->getNameParser()Lorg/apache/ldap/common/name/DnParser;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;Lorg/apache/ldap/common/name/LdapName;)Ljavax/naming/Name;

    return-void

    .line 90
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/Iterator;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_isClean:Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    .line 118
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_isClean:Z

    .line 106
    iput-object p1, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    return-void
.end method

.method public static getNameParser()Lorg/apache/ldap/common/name/DnParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 708
    sget-object v0, Lorg/apache/ldap/common/name/LdapName;->s_parser:Lorg/apache/ldap/common/name/DnParser;

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Lorg/apache/ldap/common/name/DnParser;

    invoke-direct {v0}, Lorg/apache/ldap/common/name/DnParser;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/name/LdapName;->s_parser:Lorg/apache/ldap/common/name/DnParser;

    .line 713
    :cond_0
    sget-object v0, Lorg/apache/ldap/common/name/LdapName;->s_parser:Lorg/apache/ldap/common/name/DnParser;

    return-object v0
.end method

.method public static getRdn(Ljavax/naming/Name;)Ljava/lang/String;
    .locals 1

    .line 741
    invoke-interface {p0}, Ljavax/naming/Name;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 743
    const-string p0, ""

    return-object p0

    .line 746
    :cond_0
    invoke-interface {p0}, Ljavax/naming/Name;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private syntaxCheck(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/InvalidNameException;
        }
    .end annotation

    const/16 v0, 0x3d

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 449
    :cond_0
    new-instance v0, Ljavax/naming/InvalidNameException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Name component "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " is not a valid distinguished name component."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private syntaxCheck(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/InvalidNameException;
        }
    .end annotation

    const/16 v0, 0x3d

    .line 468
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 470
    :cond_0
    new-instance v0, Ljavax/naming/InvalidNameException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Name component "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " at index "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " is not a valid distinguished name component."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/String;)Ljavax/naming/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/InvalidNameException;
        }
    .end annotation

    .line 582
    invoke-direct {p0, p2}, Lorg/apache/ldap/common/name/LdapName;->syntaxCheck(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 584
    iput-boolean p1, p0, Lorg/apache/ldap/common/name/LdapName;->m_isClean:Z

    return-object p0
.end method

.method public add(Ljava/lang/String;)Ljavax/naming/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/InvalidNameException;
        }
    .end annotation

    .line 558
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/name/LdapName;->syntaxCheck(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 560
    iput-boolean v1, p0, Lorg/apache/ldap/common/name/LdapName;->m_isClean:Z

    return-object p0
.end method

.method public addAll(ILjavax/naming/Name;)Ljavax/naming/Name;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/InvalidNameException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 530
    :goto_0
    invoke-interface {p2}, Ljavax/naming/Name;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 532
    invoke-interface {p2, v1}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/ldap/common/name/LdapName;->syntaxCheck(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 536
    :goto_1
    invoke-interface {p2}, Ljavax/naming/Name;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 538
    iget-object v2, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, v1

    invoke-interface {p2, v1}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 541
    :cond_1
    iput-boolean v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_isClean:Z

    return-object p0
.end method

.method public addAll(Ljavax/naming/Name;)Ljavax/naming/Name;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/InvalidNameException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 492
    :goto_0
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 494
    invoke-interface {p1, v1}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/ldap/common/name/LdapName;->syntaxCheck(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 498
    :goto_1
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 500
    iget-object v2, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-interface {p1, v1}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 503
    :cond_1
    iput-boolean v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_isClean:Z

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 149
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    iget-object v1, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 184
    instance-of v0, p1, Lorg/apache/ldap/common/name/LdapName;

    if-eqz v0, :cond_4

    .line 186
    check-cast p1, Lorg/apache/ldap/common/name/LdapName;

    .line 187
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 198
    invoke-virtual {p0, v2}, Lorg/apache/ldap/common/name/LdapName;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/apache/ldap/common/name/LdapName;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    return v1

    .line 215
    :cond_2
    iget-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result p1

    if-le v0, p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1

    .line 226
    :cond_4
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "The object to compare this LdapName to is not a valid LDAP distinguished name."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endsWith(Ljavax/naming/Name;)Z
    .locals 5

    .line 407
    instance-of v0, p1, Lorg/apache/ldap/common/name/LdapName;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 409
    check-cast p1, Lorg/apache/ldap/common/name/LdapName;

    .line 412
    invoke-virtual {p1}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    return v1

    .line 417
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v2

    sub-int/2addr v0, v2

    move v2, v1

    .line 418
    :goto_0
    invoke-virtual {p1}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 420
    invoke-virtual {p1, v2}, Lorg/apache/ldap/common/name/LdapName;->get(I)Ljava/lang/String;

    move-result-object v3

    add-int v4, v0, v2

    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/name/LdapName;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 653
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 657
    :cond_0
    instance-of v0, p1, Ljavax/naming/Name;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 659
    check-cast p1, Ljavax/naming/Name;

    .line 660
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v0, v1

    .line 665
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 668
    invoke-interface {p1, v0}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/LdapName;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public get(I)Ljava/lang/String;
    .locals 2

    .line 310
    iget-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAll()Ljava/util/Enumeration;
    .locals 1

    .line 271
    new-instance v0, Lorg/apache/ldap/common/name/LdapName$1;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/name/LdapName$1;-><init>(Lorg/apache/ldap/common/name/LdapName;)V

    return-object v0
.end method

.method public getPrefix(I)Ljavax/naming/Name;
    .locals 3

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    iget-object v1, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result p1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 331
    new-instance p1, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public getRdn()Ljava/lang/String;
    .locals 1

    .line 724
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 726
    const-string v0, ""

    return-object v0

    .line 729
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/LdapName;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuffix(I)Ljavax/naming/Name;
    .locals 3

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    iget-object v1, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 353
    new-instance p1, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {p1, v0}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 690
    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/InvalidNameException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 607
    iput-boolean v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_isClean:Z

    .line 608
    iget-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method setList(Ljava/util/ArrayList;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    return-void
.end method

.method public size()I
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public startsWith(Ljavax/naming/Name;)Z
    .locals 4

    .line 368
    instance-of v0, p1, Lorg/apache/ldap/common/name/LdapName;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 370
    check-cast p1, Lorg/apache/ldap/common/name/LdapName;

    .line 373
    invoke-virtual {p1}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 379
    :goto_0
    invoke-virtual {p1}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 381
    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/name/LdapName;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/name/LdapName;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 625
    iget-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/ldap/common/name/LdapName;->m_isClean:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 630
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_name:Ljava/lang/String;

    return-object v0

    .line 636
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    move v2, v1

    .line 637
    :goto_0
    iget-object v3, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/16 v3, 0x2c

    .line 639
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ldap/common/name/LdapName;->m_list:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 642
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/common/name/LdapName;->m_name:Ljava/lang/String;

    .line 643
    iput-boolean v1, p0, Lorg/apache/ldap/common/name/LdapName;->m_isClean:Z

    return-object v0
.end method
