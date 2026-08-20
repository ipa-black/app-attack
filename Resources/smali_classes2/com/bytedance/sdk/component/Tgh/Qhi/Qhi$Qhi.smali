.class public Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;
.super Ljava/lang/Object;
.source "AdLogConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field private CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private Gm:I

.field private Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;

.field private ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

.field private Sf:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

.field private Tgh:Z

.field private WAv:I

.field private ac:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private fl:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private hm:Z

.field private zc:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    .line 106
    iput v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->WAv:I

    const/16 v0, 0xa

    .line 107
    iput v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Gm:I

    return-void
.end method


# virtual methods
.method public Qhi(I)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;
    .locals 0

    .line 176
    iput p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->WAv:I

    return-object p0
.end method

.method public Qhi(J)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->zc:J

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Sf:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;

    return-object p0
.end method

.method public Qhi(Z)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Tgh:Z

    return-object p0
.end method

.method public Qhi()Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;
    .locals 3

    .line 186
    new-instance v0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$1;)V

    .line 187
    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;

    .line 188
    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 189
    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 190
    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->ac(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 191
    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->CJ(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    .line 192
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Tgh:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Z)Z

    .line 193
    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    .line 194
    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Sf:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

    .line 195
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->hm:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Z)Z

    .line 196
    iget v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Gm:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;I)I

    .line 197
    iget v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->WAv:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;I)I

    .line 198
    iget-wide v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->zc:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;J)J

    return-object v0
.end method

.method public ac(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-object p0
.end method

.method public cJ(I)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;
    .locals 0

    .line 181
    iput p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Gm:I

    return-object p0
.end method

.method public cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-object p0
.end method
