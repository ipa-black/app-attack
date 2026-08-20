.class public Lorg/apache/ldap/common/filter/SubstringNode;
.super Lorg/apache/ldap/common/filter/LeafNode;
.source "SubstringNode.java"


# instance fields
.field private final m_any:Ljava/util/ArrayList;

.field private final m_final:Ljava/lang/String;

.field private final m_initial:Ljava/lang/String;

.field private transient m_regex:Lorg/apache/regexp/RE;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 72
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/filter/LeafNode;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_regex:Lorg/apache/regexp/RE;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_any:Ljava/util/ArrayList;

    .line 75
    iput-object p3, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_final:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_initial:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 92
    invoke-direct {p0, p2, v0}, Lorg/apache/ldap/common/filter/LeafNode;-><init>(Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_regex:Lorg/apache/regexp/RE;

    .line 94
    iput-object p1, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_any:Ljava/util/ArrayList;

    .line 95
    iput-object p4, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_final:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_initial:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/ldap/common/filter/FilterVisitor;)V
    .locals 1

    .line 254
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->canVisit(Lorg/apache/ldap/common/filter/ExprNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {p1, p0}, Lorg/apache/ldap/common/filter/FilterVisitor;->visit(Lorg/apache/ldap/common/filter/ExprNode;)V

    :cond_0
    return-void
.end method

.method public final getAny()Ljava/util/ArrayList;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_any:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getFinal()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_final:Ljava/lang/String;

    return-object v0
.end method

.method public final getInitial()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_initial:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegex(Lorg/apache/ldap/common/schema/Normalizer;)Lorg/apache/regexp/RE;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;,
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_regex:Lorg/apache/regexp/RE;

    if-eqz v0, :cond_0

    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_any:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 150
    iget-object v0, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_any:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 154
    iget-object v4, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_any:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_initial:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 161
    invoke-interface {p1, v0}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 165
    :goto_1
    iget-object v3, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_final:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 167
    invoke-interface {p1, v3}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 170
    :cond_3
    invoke-static {v0, v2, v1}, Lorg/apache/ldap/common/util/StringTools;->getRegex(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/apache/regexp/RE;

    move-result-object p1

    return-object p1

    .line 175
    :cond_4
    iget-object v0, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_initial:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 177
    invoke-interface {p1, v0}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 181
    :goto_2
    iget-object v2, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_final:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 183
    invoke-interface {p1, v2}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object p1, v1

    .line 186
    :goto_3
    invoke-static {v0, v1, p1}, Lorg/apache/ldap/common/util/StringTools;->getRegex(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/apache/regexp/RE;

    move-result-object p1

    return-object p1
.end method

.method public printToBuffer(Ljava/lang/StringBuffer;)V
    .locals 3

    const/16 v0, 0x28

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/SubstringNode;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 209
    iget-object v0, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_initial:Ljava/lang/String;

    const/16 v1, 0x2a

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v0, 0x0

    .line 219
    :goto_1
    iget-object v2, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_any:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 221
    iget-object v2, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_any:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_1
    iget-object v0, p0, Lorg/apache/ldap/common/filter/SubstringNode;->m_final:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v0, 0x29

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/SubstringNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/SubstringNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x5b

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    invoke-virtual {p0}, Lorg/apache/ldap/common/filter/SubstringNode;->getAnnotations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const/16 v0, 0x20

    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 195
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/filter/SubstringNode;->printToBuffer(Ljava/lang/StringBuffer;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
