.class public final synthetic Lcom/google/android/gms/internal/ads/zzckz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazs;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzclf;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzazs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzclf;Lcom/google/android/gms/internal/ads/zzazs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckz;->zza:Lcom/google/android/gms/internal/ads/zzclf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckz;->zzb:Lcom/google/android/gms/internal/ads/zzazs;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzazt;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckz;->zza:Lcom/google/android/gms/internal/ads/zzclf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckz;->zzb:Lcom/google/android/gms/internal/ads/zzazs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzclf;->zzU(Lcom/google/android/gms/internal/ads/zzazs;)Lcom/google/android/gms/internal/ads/zzazt;

    move-result-object v0

    return-object v0
.end method
