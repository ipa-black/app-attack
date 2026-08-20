.class public final enum Lcom/appodeal/ads/segments/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/segments/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/appodeal/ads/segments/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/appodeal/ads/segments/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/appodeal/ads/segments/b;

    new-instance v1, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    const-string v3, "<"

    const-string v4, "LESS"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/appodeal/ads/segments/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/segments/c;)V

    new-instance v1, Lcom/appodeal/ads/segments/b;

    new-instance v2, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda1;-><init>()V

    const/4 v3, 0x1

    const-string v4, "<="

    const-string v5, "LESS_EQUALS"

    invoke-direct {v1, v5, v3, v4, v2}, Lcom/appodeal/ads/segments/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/segments/c;)V

    new-instance v2, Lcom/appodeal/ads/segments/b;

    new-instance v3, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda2;-><init>()V

    const/4 v4, 0x2

    const-string v5, "=="

    const-string v6, "EQUALS"

    invoke-direct {v2, v6, v4, v5, v3}, Lcom/appodeal/ads/segments/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/segments/c;)V

    new-instance v3, Lcom/appodeal/ads/segments/b;

    new-instance v4, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda3;-><init>()V

    const/4 v5, 0x3

    const-string v6, "!="

    const-string v7, "NOT_EQUALS"

    invoke-direct {v3, v7, v5, v6, v4}, Lcom/appodeal/ads/segments/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/segments/c;)V

    new-instance v4, Lcom/appodeal/ads/segments/b;

    new-instance v5, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda4;-><init>()V

    const/4 v6, 0x4

    const-string v7, ">="

    const-string v8, "MORE_EQUALS"

    invoke-direct {v4, v8, v6, v7, v5}, Lcom/appodeal/ads/segments/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/segments/c;)V

    new-instance v5, Lcom/appodeal/ads/segments/b;

    new-instance v6, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda5;-><init>()V

    const/4 v7, 0x5

    const-string v8, ">"

    const-string v9, "MORE"

    invoke-direct {v5, v9, v7, v8, v6}, Lcom/appodeal/ads/segments/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/segments/c;)V

    new-instance v6, Lcom/appodeal/ads/segments/b;

    new-instance v7, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda6;-><init>()V

    const-string v8, "IN"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v8, v7}, Lcom/appodeal/ads/segments/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/segments/c;)V

    new-instance v7, Lcom/appodeal/ads/segments/b;

    new-instance v8, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda7;

    invoke-direct {v8}, Lcom/appodeal/ads/segments/b$$ExternalSyntheticLambda7;-><init>()V

    const/4 v9, 0x7

    const-string v10, "%="

    const-string v11, "Modulo"

    invoke-direct {v7, v11, v9, v10, v8}, Lcom/appodeal/ads/segments/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/segments/c;)V

    filled-new-array/range {v0 .. v7}, [Lcom/appodeal/ads/segments/b;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/segments/b;->c:[Lcom/appodeal/ads/segments/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/segments/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/appodeal/ads/segments/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appodeal/ads/segments/b;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/segments/b;->b:Lcom/appodeal/ads/segments/c;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/appodeal/ads/segments/b;
    .locals 5

    invoke-static {}, Lcom/appodeal/ads/segments/b;->values()[Lcom/appodeal/ads/segments/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/appodeal/ads/segments/b;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/appodeal/ads/segments/d;->a(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/segments/b;
    .locals 1

    const-class v0, Lcom/appodeal/ads/segments/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/segments/b;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/segments/b;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/segments/b;->c:[Lcom/appodeal/ads/segments/b;

    invoke-virtual {v0}, [Lcom/appodeal/ads/segments/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/segments/b;

    return-object v0
.end method
