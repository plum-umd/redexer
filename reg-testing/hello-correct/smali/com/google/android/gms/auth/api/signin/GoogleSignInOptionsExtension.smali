.class public interface abstract Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;
.super Ljava/lang/Object;


# static fields
.field public static final FITNESS:I = 0x3

.field public static final GAMES:I = 0x1


# virtual methods
.method public abstract getExtensionType()I
.end method

.method public abstract getImpliedScopes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toBundle()Landroid/os/Bundle;
.end method
