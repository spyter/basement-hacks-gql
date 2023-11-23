import { ComponentFixture, TestBed } from '@angular/core/testing';
import { HxWebShellUiComponent } from './hx-web-shell-ui.component';

describe('HxWebShellUiComponent', () => {
  let component: HxWebShellUiComponent;
  let fixture: ComponentFixture<HxWebShellUiComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [HxWebShellUiComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(HxWebShellUiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
