.class public final Lcom/facebook/ads/redexgen/X/9w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodQueueTracker"
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/9u;

.field public A01:Lcom/facebook/ads/redexgen/X/9x;

.field public A02:Lcom/facebook/ads/redexgen/X/9x;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/9s;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/9x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 21102
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rmgpPCWB7BYHQ3azE8yCiRChgWLX4K1O"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ESYL8WQp59BjyyK9DI9xkUBJ1yOk4QLd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YweXfGig2PVNilG2mJZlv3ovQAOkP8UY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CAftEyLXQvcAYYqOnK17yfwScyM6Y9GQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5ZUx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CHSAxwc6W9B6bhcUywJKjVUar2kzl0Sb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "G9dVYOs473"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8VVZpCzafohaQpJb3SOOvVZNRfYg5osa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9w;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    .line 21105
    new-instance v0, Lcom/facebook/ads/redexgen/X/9s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9s;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A04:Lcom/facebook/ads/redexgen/X/9s;

    .line 21106
    sget-object v0, Lcom/facebook/ads/redexgen/X/9u;->A01:Lcom/facebook/ads/redexgen/X/9u;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A00:Lcom/facebook/ads/redexgen/X/9u;

    .line 21107
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/9x;Lcom/facebook/ads/redexgen/X/9u;)Lcom/facebook/ads/redexgen/X/9x;
    .locals 5

    .line 21108
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A00:Lcom/facebook/ads/redexgen/X/9u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21109
    .end local v0
    .end local v1
    .end local v2
    :cond_0
    return-object p1

    .line 21110
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9w;->A00:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9x;->A01:Lcom/facebook/ads/redexgen/X/ER;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/9w;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9w;->A06:[Ljava/lang/String;

    const-string v1, "6Z7kXvoTE0GMRlV8X7ahHWF28Ir1JA8U"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9w;->A04:Lcom/facebook/ads/redexgen/X/9s;

    const/4 v0, 0x1

    .line 21111
    invoke-virtual {v4, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A0A(ILcom/facebook/ads/redexgen/X/9s;Z)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9s;->A03:Ljava/lang/Object;

    .line 21112
    .local v0, "uid":Ljava/lang/Object;
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/9u;->A04(Ljava/lang/Object;)I

    move-result v1

    .line 21113
    .local v1, "newPeriodIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 21114
    return-object p1

    .line 21115
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A04:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/9s;->A00:I

    .line 21116
    .local v2, "newWindowIndex":I
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9x;->A01:Lcom/facebook/ads/redexgen/X/ER;

    .line 21117
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ER;->A00(I)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9x;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/9x;-><init>(ILcom/facebook/ads/redexgen/X/ER;)V

    .line 21118
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/9w;)Ljava/util/ArrayList;
    .locals 0

    .line 21119
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    return-object p0
.end method

.method private A02()V
    .locals 2

    .line 21120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21121
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9x;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A01:Lcom/facebook/ads/redexgen/X/9x;

    .line 21122
    :cond_0
    return-void
.end method


# virtual methods
.method public final A03()Lcom/facebook/ads/redexgen/X/9x;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A01:Lcom/facebook/ads/redexgen/X/9x;

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/9x;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21125
    const/4 v0, 0x0

    .line 21126
    :goto_0
    return-object v0

    .line 21127
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/9w;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9w;->A06:[Ljava/lang/String;

    const-string v1, "IuVtQJyFuB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "VEjGs0KHAo6Qkjlg0Fq6YAYYmbb9RMII"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9x;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/9x;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A00:Lcom/facebook/ads/redexgen/X/9u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A03:Z

    if-eqz v0, :cond_1

    .line 21129
    :cond_0
    const/4 v0, 0x0

    .line 21130
    :goto_0
    return-object v0

    .line 21131
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9x;

    goto :goto_0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/9x;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A02:Lcom/facebook/ads/redexgen/X/9x;

    return-object v0
.end method

.method public final A07(I)Lcom/facebook/ads/redexgen/X/ER;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21133
    const/4 v6, 0x0

    .line 21134
    .local v0, "match":Lcom/facebook/ads/redexgen/X/ER;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A00:Lcom/facebook/ads/redexgen/X/9u;

    if-eqz v0, :cond_2

    .line 21135
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9u;->A00()I

    move-result v5

    .line 21136
    .local v1, "timelinePeriodCount":I
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 21137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/9x;

    .line 21138
    .local v3, "mediaPeriod":Lcom/facebook/ads/redexgen/X/9x;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9x;->A01:Lcom/facebook/ads/redexgen/X/ER;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    .line 21139
    .local v4, "periodIndex":I
    if-ge v2, v5, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9w;->A00:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A04:Lcom/facebook/ads/redexgen/X/9s;

    .line 21140
    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9s;->A00:I

    if-ne v0, p1, :cond_1

    .line 21141
    if-eqz v6, :cond_0

    .line 21142
    const/4 v0, 0x0

    return-object v0

    .line 21143
    :cond_0
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/9x;->A01:Lcom/facebook/ads/redexgen/X/ER;

    .line 21144
    .end local v3    # "mediaPeriod":Lcom/facebook/ads/redexgen/X/9x;
    .end local v4    # "periodIndex":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21145
    .end local v1    # "timelinePeriodCount":I
    .end local v2    # "i":I
    :cond_2
    return-object v6
.end method

.method public final A08()V
    .locals 1

    .line 21146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A03:Z

    .line 21147
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9w;->A02()V

    .line 21148
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 21149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A03:Z

    .line 21150
    return-void
.end method

.method public final A0A(I)V
    .locals 0

    .line 21151
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9w;->A02()V

    .line 21152
    return-void
.end method

.method public final A0B(ILcom/facebook/ads/redexgen/X/ER;)V
    .locals 2

    .line 21153
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9x;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9x;-><init>(ILcom/facebook/ads/redexgen/X/ER;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A00:Lcom/facebook/ads/redexgen/X/9u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21155
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9w;->A02()V

    .line 21156
    :cond_0
    return-void
.end method

.method public final A0C(ILcom/facebook/ads/redexgen/X/ER;)V
    .locals 2

    .line 21157
    new-instance v1, Lcom/facebook/ads/redexgen/X/9x;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/9x;-><init>(ILcom/facebook/ads/redexgen/X/ER;)V

    .line 21158
    .local v0, "mediaPeriod":Lcom/facebook/ads/redexgen/X/9x;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A02:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A02:Lcom/facebook/ads/redexgen/X/9x;

    .line 21161
    :cond_0
    return-void

    .line 21162
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9x;

    goto :goto_0
.end method

.method public final A0D(ILcom/facebook/ads/redexgen/X/ER;)V
    .locals 1

    .line 21163
    new-instance v0, Lcom/facebook/ads/redexgen/X/9x;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9x;-><init>(ILcom/facebook/ads/redexgen/X/ER;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A02:Lcom/facebook/ads/redexgen/X/9x;

    .line 21164
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/9u;)V
    .locals 3

    .line 21165
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 21166
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9w;->A05:Ljava/util/ArrayList;

    .line 21167
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9x;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/9w;->A00(Lcom/facebook/ads/redexgen/X/9x;Lcom/facebook/ads/redexgen/X/9u;)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    .line 21168
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21170
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A02:Lcom/facebook/ads/redexgen/X/9x;

    if-eqz v0, :cond_1

    .line 21171
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/9w;->A00(Lcom/facebook/ads/redexgen/X/9x;Lcom/facebook/ads/redexgen/X/9u;)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A02:Lcom/facebook/ads/redexgen/X/9x;

    .line 21172
    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9w;->A00:Lcom/facebook/ads/redexgen/X/9u;

    .line 21173
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9w;->A02()V

    .line 21174
    return-void
.end method

.method public final A0F()Z
    .locals 1

    .line 21175
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9w;->A03:Z

    return v0
.end method
