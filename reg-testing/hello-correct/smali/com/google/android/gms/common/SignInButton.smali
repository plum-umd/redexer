.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/SignInButton$ColorScheme;,
        Lcom/google/android/gms/common/SignInButton$ButtonSize;
    }
.end annotation


# static fields
.field public static final COLOR_AUTO:I = 0x2

.field public static final COLOR_DARK:I = 0x0

.field public static final COLOR_LIGHT:I = 0x1

.field public static final SIZE_ICON_ONLY:I = 0x2

.field public static final SIZE_STANDARD:I = 0x0

.field public static final SIZE_WIDE:I = 0x1


# instance fields
.field private mColor:I

.field private mSize:I

.field private zaas:Landroid/view/View;

.field private zaat:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/common/SignInButton;->zaat:Landroid/view/View$OnClickListener;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/base/R$styleable;->SignInButton:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    :try_start_0
    sget p2, Lcom/google/android/gms/base/R$styleable;->SignInButton_buttonSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    .line 11
    sget p2, Lcom/google/android/gms/base/R$styleable;->SignInButton_colorScheme:I

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    iget p1, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void

    :catchall_0
    move-exception p2

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zaat:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->zaas:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 51
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setColorScheme(I)V
    .locals 1

    .line 19
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zaas:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->zaat:Landroid/view/View$OnClickListener;

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->zaas:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setScopes([Lcom/google/android/gms/common/api/Scope;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p1, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public final setSize(I)V
    .locals 1

    .line 17
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public final setStyle(II)V
    .locals 2

    .line 23
    iput p1, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    .line 24
    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/google/android/gms/common/SignInButton;->zaas:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 27
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/SignInButton;->removeView(Landroid/view/View;)V

    .line 28
    :cond_0
    :try_start_0
    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/SignInButtonCreator;->createView(Landroid/content/Context;II)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/SignInButton;->zaas:Landroid/view/View;
    :try_end_0
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "SignInButton"

    const-string v0, "Sign in button not found, using placeholder instead"

    .line 31
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    .line 33
    new-instance v1, Lcom/google/android/gms/common/internal/SignInButtonImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/SignInButtonImpl;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->configure(Landroid/content/res/Resources;II)V

    .line 36
    iput-object v1, p0, Lcom/google/android/gms/common/SignInButton;->zaas:Landroid/view/View;

    .line 37
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->zaas:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/SignInButton;->addView(Landroid/view/View;)V

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->zaas:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->zaas:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setStyle(II[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method
